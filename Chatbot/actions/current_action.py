import random
from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from neo4j import GraphDatabase


class CurrentAction(Action):

    def __init__(self):
        self.product = None

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_current_action"

    def get_task(self, tx):
        result = tx.run("MATCH (a:`Agent Plan`)-[]-()-[]-()-[]->(p:Subtask) "
                        "Where p.status='ACTIVE' RETURN p.action AS action, a.product AS product")
        records = list(result)  # a list of Record objects
        summary = result.consume()
        return records, summary

    def run_test(self):
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        with driver.session(database="test") as session:
            records, summary = session.execute_read(self.get_task)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            action = records[0].data()["action"]
            print(action)

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
        with driver.session(database="test") as session:
            records, summary = session.execute_read(self.get_task)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                # Loop through results and do something with them
                action = records[0].data()["action"]
                product = records[0].data()["product"]
                self.product = product
                product_emoji = self.specific_product()
                location_list = ['Shelf1', 'Shelf2', 'Table1', 'Table2', 'Basket']
                response_list = ['🤔 The current action is', 'No problem! The 🤖 is ', 'Ok, The 🤖 is', 'Currently, the 🤖 is']
                select_response = random.choice(response_list)
                response_reject = ['There is no active action.', '😥, It seems 🤖 is not busy at the moment',
                                   '🤔, I think there is no running action for 🤖.']
                select_reject = random.choice(response_reject)
                destination = None
                if action == "move_to_reach" or action == "move_to":
                    if product == 'milk':
                        destination = 'Table1'
                    if product == 'hagelslag':
                        destination = 'Shelf2'
                    if product == 'tea_box':
                        destination = 'Shelf1'
                    dispatcher.utter_message(text=f"{select_response} moving to reach {destination}.")
                elif action == "pick":
                    dispatcher.utter_message(text=f"{select_response} picking {product_emoji}.")
                elif action == "place_in_basket":
                    dispatcher.utter_message(text=f"{select_response} placing {product_emoji}.")
                else:
                    dispatcher.utter_message(text=select_reject)
            else:
                dispatcher.utter_message(text='The 🤖 is free of actions!')
        return []


if __name__ == "__main__":
    kb = CurrentAction()
    kb.run_test()
