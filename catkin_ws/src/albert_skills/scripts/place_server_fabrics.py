#!/usr/bin/env python3

import time
import rospy
import actionlib
from albert_skills.msg import *


class PlaceActionServer(object):
    def __init__(self, name):
        # Initialize action server
        self._rate = rospy.Rate(20)
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, PlaceAction,
                                                execute_cb=self.as_cb, auto_start=False)
        self._as.start()
        # self._result = PlaceResult(success=True)

    def as_cb(self, goal):
        try:
            # rospy.sleep(60)
            rospy.sleep(5)
            rospy.loginfo('Place action succeeded!')
            self._as.set_succeeded()
            rospy.set_param("place_status", True)
            return
        except:
            rospy.loginfo('Product not found in knowledge base')
            rospy.loginfo('%s: Aborted' % self._action_name)
            self._as.set_aborted()
            return

if __name__ == "__main__":
    rospy.init_node("place_server_fabrics")
    PlaceActionServer(rospy.get_name())
    rospy.spin()
