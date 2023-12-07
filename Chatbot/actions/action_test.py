import os
from typing import Any, Dict, List, Text
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.knowledge_base.actions import ActionQueryKnowledgeBase

USE_NEO4J = bool(os.getenv("USE_NEO4J", True))

if USE_NEO4J:
    from neo4j_test import Neo4jKnowledgeBase


class MyKnowledgeBaseAction(ActionQueryKnowledgeBase):
    def name(self) -> Text:
        return "action_test"

    def __init__(self):
        if USE_NEO4J:
            print("using Neo4jKnowledgeBase")
            knowledge_base = Neo4jKnowledgeBase("bolt://localhost:11003", "neo4j", "xxx")
        # else:
        #     print("using InMemoryKnowledgeBase")
        #     knowledge_base = InMemoryKnowledgeBase("data.json")

        super().__init__(knowledge_base)

    async def utter_objects(
            self,
            dispatcher: CollectingDispatcher,
            object_type: Text,
            objects: List[Dict[Text, Any]],
    ) -> None:
        """
        Utters a response to the user that lists all found objects.
        Args:
            dispatcher: the dispatcher
            object_type: the object type
            objects: the list of objects
        """
        if objects:
            # dispatcher.utter_message(text=f"Found the following actions in the environment:")
            self.knowledge_base.set_representation_function_of_object(object_type, lambda obj: obj["action"])
            repr_function = await self.knowledge_base.get_representation_function_of_object(
                object_type
            )

            # for i, obj in enumerate(objects, 1):
            #     dispatcher.utter_message(text=f"Task_{i} is {repr_function(obj)}")
            for i, obj in enumerate(objects, 1):
                if repr_function(obj) == 'move_to_reach' or repr_function(obj) == 'move_to':
                    text = 'is moving to reach the product.'
                if repr_function(obj) == 'pick':
                    text = 'is picking the product.'
                if repr_function(obj) == 'place_in_basket':
                    text = 'is placing the product into basket.'
                dispatcher.utter_message(text=f"Task_{i} {text}")

        else:
            dispatcher.utter_message(
                text=f"I could not find any objects of type '{object_type}'."
            )

    def utter_attribute_value(
        self,
        dispatcher: CollectingDispatcher,
        object_name: Text,
        attribute_name: Text,
        attribute_value: Text,
    ) -> None:
        """
        Utters a response that informs the user about the attribute value of the
        attribute of interest.
        Args:
            dispatcher: the dispatcher
            object_name: the name of the object
            attribute_name: the name of the attribute
            attribute_value: the value of the attribute
        """
        if attribute_value:
            dispatcher.utter_message(
                # text=f"'{object_name}' has the value '{attribute_value}' for attribute '{attribute_name}'."
                text=f"{object_name}'s {attribute_name}'is {attribute_value}."
            )
        else:
            dispatcher.utter_message(
                text=f"Did not find a valid value for attribute '{attribute_name}' for object '{object_name}'."
            )