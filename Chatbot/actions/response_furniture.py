from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.events import SlotSet
from neo4j import GraphDatabase
import random


class Furniture(Action):

    def __init__(self):
        self.object = None
        self.furniture = None
        self.product = None

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_response_furniture"

    def get_product(self, tx):
        # self.furniture = "Shelf2"
        result = tx.run(f"MATCH (n:Object)-[]-()-[]->(m:PositionRegion) WHERE m.value=$value "
                        f"RETURN n.name AS products", value=self.furniture)
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def get_product_furniture(self, tx):
        # self.furniture = "Table1"
        # self.object = "milk"
        result = tx.run(f"MATCH (n:Object)-[]-()-[]->(m:PositionRegion) WHERE n.name=$name and m.value=$value "
                        f"RETURN n.name AS products", name=self.object, value=self.furniture)
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def run_test(self):
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        with driver.session(database="database") as session:
            records, summary = session.execute_read(self.get_product_furniture)

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
            # print((records[1].data())["products"])
            # print((records[0].data())["properties"].items())
            print((len(records)))
            # print((records[0].data()))
            # for i in records:
            #     print(i.data()["products"])

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
        self.furniture = tracker.get_slot("furniture")
        # self.object = tracker.get_slot("object")

        if self.furniture in ['Shelf1', 'Shelf2', 'Table1', 'Table2', 'Basket']:
            # if not self.object:
            with driver.session(database="database") as session:
                records, summary = session.execute_read(self.get_product)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                if self.furniture != 'Basket':
                    response_list = [f"On {self.furniture}, you can find product:",
                                     f"You can find the following product on {self.furniture}",
                                     f"🔎 I find the following product is placed on the {self.furniture}:",
                                     f"🤔 I think {self.furniture} contains product:"]
                else:
                    response_list = [f"In {self.furniture}, you can find product:",
                                     f"You can find the following product in {self.furniture}",
                                     f"🔎 I find the following product is placed in the {self.furniture}:",
                                     f"🤔 I think {self.furniture} contains product:"]
                select_response = random.choice(response_list)
                dispatcher.utter_message(text=select_response)
                for i in records:
                    self.product = i.data()["products"]
                    product = self.specific_product()
                    dispatcher.utter_message(text=product)
            else:
                response_reject = [f"😟 There is no product located in {self.furniture}.",
                                   f"😥 It seems {self.furniture} doesn't contain any product.",
                                   f"Sorry, I can't find any product in {self.furniture} for you.",
                                   f"😔 We might add some products in {self.furniture} later."]

                select_reject = random.choice(response_reject)
                dispatcher.utter_message(text=select_reject)

        else:
            dispatcher.utter_message(
                text="😥 it seems that there is no such furniture in the environment. Please check your spelling!")
        return []


if __name__ == "__main__":
    kb = Furniture()
    kb.run_test()
