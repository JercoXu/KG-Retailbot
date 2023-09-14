#!/usr/bin/env python3

# Server to look for an item using fabrics_ros
import time

import rospy
import actionlib
from albert_skills.msg import *


class LookForItem(object):
    # create messages that are used to publish feedback/result
    _feedback = LookForItemFeedback()
    _result = LookForItemResult()

    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, LookForItemAction,
                                                execute_cb=self.execute_cb, auto_start=False)
        self._as.start()

    def execute_cb(self, goal):
        try:
            time.sleep(2)
            rospy.loginfo('Found product succeeded!')
            self._as.set_succeeded()
            return
        except:
            rospy.loginfo('Product not found in knowledge base')
            rospy.loginfo('%s: Aborted' % self._action_name)
            self._as.set_aborted()
            return


if __name__ == '__main__':
    rospy.init_node('look_for_item_server')
    server = LookForItem(rospy.get_name())
    rospy.spin()
