#!/usr/bin/env python3

import time
import rospy
import numpy as np
from math import pow
import actionlib
from albert_skills.msg import *


class MoveActionServer(object):
    def __init__(self, name):
        self._rate = rospy.Rate(20)
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, MoveAction,
                                                execute_cb=self.execute_cb, auto_start=False)
        self._as.start()

    def execute_cb(self, goal):
        try:
            # threshold_isAt = 0.05
            # cur_base_loc = rospy.get_param('trans')
            base_loc_x = rospy.get_param("/" + goal.goal_id + "/base_loc/x")
            base_loc_y = rospy.get_param("/" + goal.goal_id + "/base_loc/y")
            base_theta = rospy.get_param("/" + goal.goal_id + "/base_loc/theta")
            # eucl_dist = np.sqrt(pow(base_loc_x - cur_base_loc[0]) + pow(base_loc_y - cur_base_loc[1]))
            # if eucl_dist <= threshold_isAt:
            #     self._as.set_succeeded()
            #     return
            trans = rospy.get_param("trans")
            rot = rospy.get_param("rot")
            # for i in range(40):
            for i in range(5):
                rospy.sleep(1)
                trans_x = trans[0] + 0.01
                trans_y = trans[1] + 0.01
                trans = [trans_x, trans_y]
                rot = rot + 0.01
                rospy.set_param("trans", trans)
                rospy.set_param("rot", rot)
            self._as.set_succeeded()
            rospy.loginfo('Move action succeeded!')
            rospy.set_param("trans", [base_loc_x, base_loc_y])
            rospy.set_param("rot", base_theta)
            return

        except:
            rospy.loginfo('Failed to move to product: %s' % goal.goal_id)
            rospy.loginfo('%s: Aborted' % self._action_name)
            self._as.set_aborted()
            return


if __name__ == "__main__":
    rospy.init_node("move_base_sever")
    MoveActionServer(rospy.get_name())
    rospy.spin()
