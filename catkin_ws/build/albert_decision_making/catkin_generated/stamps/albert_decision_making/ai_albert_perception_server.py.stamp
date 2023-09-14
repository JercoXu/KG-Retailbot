#!/usr/bin/env python3
import random

import rospy
import numpy as np
from albert_decision_making.srv import SymbolicPerception, SymbolicPerceptionResponse
from actionlib_msgs.msg import GoalStatusArray
from std_msgs.msg import Int32MultiArray
from math import pi


class perception():
    def __init__(self):
        # Initialize server
        self.service = rospy.Service('symbolic_perception', SymbolicPerception, self.handle_request)

        # Initialize publishers/subscribers
        self.pick_result_sub = rospy.Subscriber('/pick_server_fabrics/status', GoalStatusArray, self.pick_result_cb)
        self.place_result_sub = rospy.Subscriber('/place_server_fabrics/status', GoalStatusArray, self.place_result_cb)

        # Init status for pick and place action outcomes
        self._pick_status = -1
        self._place_status = -1
        self._was_holding = 'none'
        rospy.set_param("trans", [0.00, 0.00])
        rospy.set_param("rot", 0.00)

        # Possible to handle 3 products, at the start none is placed in the basket
        self._list_placed_products = []

        print("Perception server ready to receive requests")

    def pick_result_cb(self, data):
        if len(data.status_list) > 0:
            self._pick_status = data.status_list[0].status

    def place_result_cb(self, data):
        # TODO this will need to be product dependant
        if len(data.status_list) > 0:
            self._place_status = data.status_list[0].status
            # print('Status of place action is', self._place_status)
        else:
            self._place_status = -1

    def check_at(self, req):
        trans = rospy.get_param('trans')
        rot = rospy.get_param('rot')

        threshold_isAt = 0.3
        desired_pos = [None] * 2
        desired_pos[0] = rospy.get_param('/{}/base_loc/x'.format(req.product_id))
        desired_pos[1] = rospy.get_param('/{}/base_loc/y'.format(req.product_id))
        desired_rot = rospy.get_param('/{}/base_loc/theta'.format(req.product_id))
        desired_quat = pi * desired_rot / 180

        eucl_dist = np.sqrt((desired_pos[0] - trans[0]) * (desired_pos[0] - trans[0]) + (desired_pos[1] - trans[1]) * (
                desired_pos[1] - trans[1]))
        angular_dist = abs(pi * rot / 180 - desired_quat)

        # Check euclidean distance and decide when the observation of being somewhere holds. The resr of the observations is not relevatnm thus -1, equivalent to null
        print('The pos distance is', eucl_dist)
        print('The angular dist is', angular_dist)

        if angular_dist + eucl_dist <= threshold_isAt:
            return 0  # is At
        else:
            return 1  # is not at

    def check_holding(self, req):
        # Is holding depends on both the part being present in the gripper as well as the success of the action server
        if self._pick_status == 3:
        # if self._pick_status == 3 or self._pick_status == 6:
            print('Holding, pick status is', self._pick_status)
            self._was_holding = req.product_id
            return 0  # Holding product
        else:
            print('NOT holding, pick status is', self._pick_status)
            self._was_holding = 'none'
            return 1  # Not Holding

    def check_placed(self, req):
        # Is placed depends on the success of the placing action, later could be integrated with additional computer vision modules
        # We need to check we pass from running to success.
        print(self._place_status)
        if self._place_status == 3 and self._was_holding == req.product_id:
            if req.product_id not in self._list_placed_products:
                self._list_placed_products.append(req.product_id)
        if req.product_id in self._list_placed_products:
            print('Product placed: ', req.product_id)
            print('List of products placed', self._list_placed_products)
            return 0  # Product placed
        else:
            print('Product NOT placed: ', req.product_id)
            print('List of products placed', self._list_placed_products)
            return 1  # Not placed

    def check_visible(self, req):
        random_number = random.random()
        try:
            random_number <= 0.7
            print("I see the marker")
            return 0  # There exists a marker visible and a transformation
        except Exception as e:
            if self._pick_status == 1 or self._pick_status == 3:  # If the picking is running allow for occlusions
                print('Pick status in exeption is', self._pick_status)
                return 0
            else:
                print("probably lost sight of tag!")
                return 1

    def handle_request(self, req):
        # The symbolic perception method returns the observation vector according to the req.state_name given
        if req.state_name == "isAt":
            o_at = self.check_at(req)
            obs = [o_at, -1, -1, -1, -1]

        elif req.state_name == "isHolding":
            # Check the topic of the vacuum gripper
            o_hold = self.check_holding(req)
            # Check if it is reachable
            # TODO switch back to reach for less robot movements
            # o_reach = self.check_reach(req)
            o_reach = self.check_at(req)
            # Check if it is visible
            o_vis = self.check_visible(req)
            obs = [-1, o_hold, o_reach, -1, o_vis]

        elif req.state_name == "isInBasket":
            # Check a specific topic when the place server is done plus other observations related to the product
            o_hold = self.check_holding(req)
            o_placed = self.check_placed(req)
            # TODO seitch back to reach for less robot movements
            o_reach = self.check_at(req)
            o_vis = self.check_visible(req)
            obs = [-1, o_hold, o_reach, o_placed, o_vis]

        elif req.state_name == "resetList":
            # Reset list of products placed
            self.resetList()
            obs = [-1, -1, -1, -1, -1]

        else:
            rospy.logerr(
                "Perception Server in Active Inference Server: received state {} is not valid".format(req.state_name))
            return

        response = Int32MultiArray()
        response.data = obs
        return SymbolicPerceptionResponse(response)


if __name__ == "__main__":
    rospy.init_node('symbolic_perception_server')
    perception()
    rospy.spin()
