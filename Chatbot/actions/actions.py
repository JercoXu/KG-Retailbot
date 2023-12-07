import os
import random
from typing import Any, Dict, List, Text
from rasa_sdk.executor import CollectingDispatcher
from rasa_sdk.knowledge_base.actions import ActionQueryKnowledgeBase

USE_NEO4J = bool(os.getenv("USE_NEO4J", True))

if USE_NEO4J:
    from neo4j_knowledge_base import Neo4jKnowledgeBase


class MyKnowledgeBaseAction(ActionQueryKnowledgeBase):
    def name(self) -> Text:
        return "action_response_query"

    def __init__(self):
        self.product = None
        if USE_NEO4J:
            print("using Neo4jKnowledgeBase")
            knowledge_base = Neo4jKnowledgeBase("bolt://localhost:11003", "neo4j", "xxx")
        # else:
        #     print("using InMemoryKnowledgeBase")
        #     knowledge_base = InMemoryKnowledgeBase("data.json")

        super().__init__(knowledge_base)

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
            # dispatcher.utter_message(text=f"Found the following objects of type '{object_type}':")
            dispatcher.utter_message(text=f"There are {len(objects)} products in the environment:")
            repr_function = await self.knowledge_base.get_representation_function_of_object(
                object_type
            )

            for i, obj in enumerate(objects, 1):
                self.product = repr_function(obj)
                product_emoji = self.specific_product()
                dispatcher.utter_message(text=f"{i}: {product_emoji}")
        else:
            dispatcher.utter_message(
                text=f"🤨 I think there are not objects belonging to '{object_type}'."
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
        if object_name in ['milk', 'hagelslag', 'yogurt', 'juice', 'ice_cream', 'tea_box']:
            print("got")
            if attribute_name != 'perishable':
                self.product = object_name
                product = self.specific_product()
                if attribute_value:
                    if attribute_value != 'pose':
                        response_list = [f"Sure, {product}'s {attribute_name}'is {attribute_value}.", f"The {attribute_name} of {product} is {attribute_value}.",
                                         f"🤔 {product}'s {attribute_name}'is {attribute_value}."]
                        select_response = random.choice(response_list)
                        dispatcher.utter_message(text=select_response)
                    else:
                        response_list = [f"To pick {product}, 🤖 should be posed as {attribute_value}.",
                                         f"{product} can be grabbed in pose {attribute_value}.",
                                         f"🤖 can use pose: {attribute_value} to pick {product}."]
                        select_response = random.choice(response_list)
                        dispatcher.utter_message(text=select_response)

                else:
                    dispatcher.utter_message(text=f"Did not find a valid value for attribute '{attribute_name}' for product '{object_name}'.")
            else:
                if attribute_value:
                    dispatcher.utter_message(text=f"{object_name} is perishable, which is usually recommended to refrigerate at 4°C.")
                else:
                    dispatcher.utter_message(text=f"{object_name} is nonperishable, which can be stored safely for long periods of time at room temperature.")
        else:
            print('not')
            dispatcher.utter_message(text=f"🤨 I think there is no such product.")
