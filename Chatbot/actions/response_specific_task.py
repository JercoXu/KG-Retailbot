from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from neo4j import GraphDatabase
import random


class SpecificTask(Action):

    def __init__(self):
        self.task = None

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_response_specific_task"

    def get_task(self, tx):
        # self.task = 'task_1'
        result = tx.run("MATCH (p:Task)<-[r*2]-(n) Where p.name=$task RETURN p AS task, n AS agent_plan", task=self.task)
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

            print((records[0].data())["task"])
            print(type((records[0].data())["agent_plan"]["state"]))

        return

    async def run(self, dispatcher: CollectingDispatcher,
                  tracker: Tracker,
                  domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
        driver = self.neo4j_driver("bolt://localhost:11003", "neo4j", "xxx")
        self.task = tracker.get_slot("task")
        with driver.session(database="test") as session:
            records, summary = session.execute_read(self.get_task)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                # Loop through results and do something with them
                plan = (records[0].data())["agent_plan"]
                action = plan["state"]
                product = plan["product"]
                if action == 'isAt':
                    dispatcher.utter_message(text=f"{self.task}: moving to the place where {product} located.")
                elif action == 'isHolding':
                    dispatcher.utter_message(text=f"{self.task}: picking {product}.")
                elif action == 'isInBasket':
                    dispatcher.utter_message(text=f"{self.task}: placing {product} into basket.")
            else:
                dispatcher.utter_message(text='There is no such task now! Please be patient with the process 🤭')
        return []


if __name__ == "__main__":
    kb = SpecificTask()
    kb.run_test()
