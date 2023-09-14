#!/usr/bin/env python3

import time
import rospy
import actionlib
from albert_skills.msg import *


class PickActionServer(object):
    def __init__(self, name):
        self._rate = rospy.Rate(20)
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, PickAction,
                                                execute_cb=self.as_cb, auto_start=False)
        self._as.start()

    def as_cb(self, goal):
        try:
            # product_loc_z = rospy.get_param("/" + goal.product_name + "/product_loc/z")
            # rospy.sleep(60)
            rospy.sleep(5)
            rospy.loginfo('Pick action succeeded!')
            self._as.set_succeeded()
            rospy.set_param("pick_status", True)
            return
        except:
            rospy.loginfo('Product not found in knowledge base')
            rospy.loginfo('%s: Aborted' % self._action_name)
            self._as.set_aborted()
            return


if __name__ == "__main__":
    rospy.init_node("pick_server_fabrics")
    PickActionServer(rospy.get_name())
    rospy.spin()
