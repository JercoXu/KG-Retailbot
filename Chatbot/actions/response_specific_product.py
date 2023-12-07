from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.events import SlotSet
from neo4j import GraphDatabase
import random


class Specific_Product(Action):

    def __init__(self):
        self.object = None
        self.property = None
        self.product = None
        self.response_reject = ['😟 There is no such product.',
                           "😥 It seems the environment doesn't contain this product.",
                           "Sorry, I can't find this product for you.",
                           '😔 We might add this product in the future.']

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_response_specific_product"

    def get_product(self, tx):
        # self.product = "milk"
        result = tx.run(f"MATCH (p:Object) Where p.name=$name RETURN p AS product", name=self.product)
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def get_product_property(self, tx):
        # self.product = "milk"
        result = tx.run(f"MATCH (p:Object) Where p.name=$name RETURN properties(p) AS properties", name=self.product)
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def get_property(self, tx):
        # self.product = "milk"
        result = tx.run(f"MATCH (p:Object) RETURN properties(p) AS properties")
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def run_test(self):
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        with driver.session(database="database") as session:
            records, summary = session.execute_read(self.get_property)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            property_list = []
            for k in (records[0].data())["properties"].keys():
                if k not in ['name', 'source', 'uri']:
                    property_list.append(k)
            print(property_list)
            #
            # print((records[0].data())["properties"].keys())
            # print((records[0].data())["properties"].items())
            # print((len(records)))
            # print((records[0].data()))

        return

    def specific_product(self):
        product = None
        if self.product == 'milk':
            product = 'milk 🥛'
        if self.product == 'tea_box':
            product = 'tea_box 🍵'
        if self.product == 'hagelslag':
            product = 'hagelslag 🍫'
        if self.product == 'yogurt':
            product = 'yogurt 🍶'
        if self.product == 'juice':
            product = 'juice 🍹 '
        if self.product == 'ice_cream':
            product = 'ice_cream 🍦'
        return product

    async def run(self, dispatcher: CollectingDispatcher,
                  tracker: Tracker,
                  domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        self.product = tracker.get_slot("object")
        self.property = tracker.get_slot("property")
        self.object = tracker.get_slot("object_type")

        if self.product and self.property != 'property':
            with driver.session(database="database") as session:
                records, summary = session.execute_read(self.get_product)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                product = self.specific_product()
                response_list = ['Yes, the environment contains', 'Sure! there is', '✔️ I find', '🔎 I can find']
                select_response = random.choice(response_list)
                dispatcher.utter_message(text=f"{select_response} {product}.")
            else:
                select_reject = random.choice(self.response_reject)
                dispatcher.utter_message(text=select_reject)

        if self.product and self.property == 'property' and not self.object:
            with driver.session(database="database") as session:
                records, summary = session.execute_read(self.get_product_property)
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                product = self.specific_product()
                property_list = []
                property_perishable = ''
                for k, v in (records[0].data())["properties"].items():
                    if k not in ['name', 'source', 'uri']:
                        property_list.append([k, v])
                        # if k == 'perishable':
                        #     property_perishable = v
                        # else:
                        #     property_list.append([k,v])
                select_properties = random.sample(property_list, k=2)
                response_list = ['Sure, let me introduce some properties of', '👌 I will tell you some details about',
                                 '💡 No problem, let me tell you some properties of']
                select_response = random.choice(response_list)
                product = self.specific_product()
                dispatcher.utter_message(text=f"{select_response} {product}:")
                for i in select_properties:
                    if i[0] == 'perishable':
                        if i[1]:
                            dispatcher.utter_message(text=f"It is perishable, which is usually recommended to refrigerate at 4°C.")
                        else:
                            dispatcher.utter_message(text=f"It is nonperishable, which can be stored safely for long periods of time at room temperature.")
                    dispatcher.utter_message(text=f"The {i[0]} of the product is {i[1]}.")
            else:
                select_reject = random.choice(self.response_reject)
                dispatcher.utter_message(text=select_reject)
        if (self.object or self.property == 'property') and not self.product:
            with driver.session(database="database") as session:
                records, summary = session.execute_read(self.get_property)
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                property_list = []
                for k in (records[0].data())["properties"].keys():
                    if k not in ['name', 'source', 'uri']:
                        property_list.append(k)
                property = str(property_list)
                response_list = ['😀 You could ask properties of products within this domain:', '🤭 The following attributes of product can be queried about:',
                                 '🤔 I can answer those properties of products to you:', 'I think I will try to response those attributes of items to you:']
                select_response = random.choice(response_list)
                dispatcher.utter_message(text=select_response)
                dispatcher.utter_message(text=property)

        return []


if __name__ == "__main__":
    kb = Specific_Product()
    kb.run_test()
