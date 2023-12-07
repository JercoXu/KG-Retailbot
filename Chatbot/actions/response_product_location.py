from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.events import SlotSet
from neo4j import GraphDatabase
import random


class ProductLocation(Action):

    def __init__(self):
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
        return "action_response_product_location"

    def get_product(self, tx):
        # self.product = "milk"
        result = tx.run(f"MATCH (o:Object)-[]-()-[]->(p:PositionRegion) WHERE o.name=$name "
                        f"RETURN o.position AS position, p.value AS value", name=self.product)
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def run_test(self):
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        with driver.session(database="database") as session:
            records, summary = session.execute_read(self.get_product)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            # property_list = []
            # for k, v in (records[0].data())["properties"].items():
            #     if k not in ['name', 'source', 'uri']:
            #         property_list.append([k, v])
            # print(type(property_list[0][1]))
            #
            print((records[0].data())["position"])
            print((records[0].data())["value"])
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
        # self.property = tracker.get_slot("position")

        if self.product:
            with driver.session(database="database") as session:
                records, summary = session.execute_read(self.get_product)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                product = self.specific_product()
                position = (records[0].data())["position"]
                value = (records[0].data())["value"]
                if value == "Basket":
                    response_list = [f"{product} is located at {position}, you can find it in the {value}.",
                                     f"The position of {product} is located at {position}, you can find it in the {value}",
                                     f"🔎 I find {product} is placed in the {value} with a position: {position},.",
                                     f"🤔 I think {product} is located at {position} in the {value}."]
                else:
                    response_list = [f"{product} is located at {position}, you can find it on the {value}.",
                                     f"The position of {product} is located at {position}, you can find it on the {value}",
                                     f"🔎 I find {product} is placed on the {value} with a position: {position},.",
                                     f"🤔 I think {product} is located at {position} on the {value}."]
                select_response = random.choice(response_list)
                dispatcher.utter_message(text=select_response)
            else:
                select_reject = random.choice(self.response_reject)
                dispatcher.utter_message(text=select_reject)

        return []


if __name__ == "__main__":
    kb = ProductLocation()
    kb.run_test()
