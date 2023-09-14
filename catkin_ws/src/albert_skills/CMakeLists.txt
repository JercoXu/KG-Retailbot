cmake_minimum_required(VERSION 3.0.2)
project(albert_skills)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  message_generation
  roscpp
  rospy
  std_msgs
)

## Generate actions in the 'action' folder
 add_action_files(
   DIRECTORY action
   FILES
   LookForItem.action Pick.action Place.action Move.action
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   actionlib_msgs std_msgs
 )


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES albert_skills
#  CATKIN_DEPENDS actionlib actionlib_msgs message_generation roscpp rospy std_msgs
#  DEPENDS system_lib
)


include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

