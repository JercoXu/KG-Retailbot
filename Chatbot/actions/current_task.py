from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from neo4j import GraphDatabase
import random


class CurrentTask(Action):

    def neo4j_driver(self, uri, user, password):
        return GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.neo4j_driver.close()

    def name(self) -> Text:
        return "action_current_task"

    def get_task(self, tx):
        result = tx.run("MATCH (p:Task)<-[r*2]-(n) Where p.status='ACTIVE' RETURN p AS task, n AS agent_plan")
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
        with driver.session(database="test") as session:
            records, summary = session.execute_read(self.get_task)

            # Summary information
            print("The query `{query}` returned {records_count} records in {time} ms.".format(
                query=summary.query, records_count=len(records),
                time=summary.result_available_after
            ))
            if len(records):
                # Loop through results and do something with them
                task = (records[0].data())["task"]["name"]
                plan = (records[0].data())["agent_plan"]
                action = plan["state"]
                product = plan["product"]
                response_list = ['🤖 The current task is', 'Sure! The 🤖 is performing', '🤔 The 🤖 is doing', 'Currently, the 🤖 is executing']
                response_reject = ['There is no active task.', '😥, It seems no running task at the moment', 'Sorry, I do not find running task for you.']
                select_reject = random.choice(response_reject)
                select_response = random.choice(response_list)
                if action == 'isAt':
                    dispatcher.utter_message(text=f"{select_response} {task}: moving to the place where {product} located.")
                elif action == 'isHolding':
                    dispatcher.utter_message(text=f"{select_response} {task}: picking {product}.")
                elif action == 'isInBasket':
                    dispatcher.utter_message(text=f"{select_response} {task}: placing {product} into basket.")
                else:
                    dispatcher.utter_message(text=select_reject)
            else:
                dispatcher.utter_message(text='The 🤖 finished all tasks!')
        return []


if __name__ == "__main__":
    kb = CurrentTask()
    kb.run_test()
