from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from neo4j import GraphDatabase
import random


class PreviousTask(Action):

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_previous_task"

    def get_task(self, tx):
        result = tx.run("MATCH (p:Task)<-[r*2]-(n) Where p.status='SUCCEEDED' RETURN p AS task, n AS agent_plan")
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

            print(len(records))
            print((records[0].data())["task"])
            print((records[0].data())["agent_plan"]["product"])

        return

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
                for i in range(len(records)):
                    task = (records[i].data())["task"]["name"]
                    plan = (records[i].data())["agent_plan"]
                    action = plan["state"]
                    product = plan["product"]
                    if action == 'isAt':
                        dispatcher.utter_message(
                            text=f"🔎 {task}: moving to the place where {product} located.")
                    elif action == 'isHolding':
                        dispatcher.utter_message(text=f"✅ {task}: picking {product}.")
                    elif action == 'isInBasket':
                        dispatcher.utter_message(text=f"✅ {task}: placing {product} into basket.")
            else:
                dispatcher.utter_message(text="The 🤖 doesn't finish any task yet, please be patient with it!")
        return []


if __name__ == "__main__":
    kb = PreviousTask()
    kb.run_test()
