# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "albert_decision_making: 7 messages, 1 services")

set(MSG_I_FLAGS "-Ialbert_decision_making:/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(albert_decision_making_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" "actionlib_msgs/GoalID:albert_decision_making/ActiveInferenceGoal:actionlib_msgs/GoalStatus:albert_decision_making/ActiveInferenceActionGoal:albert_decision_making/ActiveInferenceFeedback:albert_decision_making/ActiveInferenceActionResult:std_msgs/Header:albert_decision_making/ActiveInferenceActionFeedback:albert_decision_making/ActiveInferenceResult"
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" "std_msgs/Int32MultiArray:std_msgs/MultiArrayDimension:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" ""
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" ""
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" ""
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" "albert_decision_making/ActiveInferenceFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:albert_decision_making/ActiveInferenceResult:std_msgs/Header"
)

get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_custom_target(_albert_decision_making_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "albert_decision_making" "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" "actionlib_msgs/GoalID:albert_decision_making/ActiveInferenceGoal:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)

### Generating Services
_generate_srv_cpp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
)

### Generating Module File
_generate_module_cpp(albert_decision_making
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(albert_decision_making_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(albert_decision_making_generate_messages albert_decision_making_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_cpp _albert_decision_making_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(albert_decision_making_gencpp)
add_dependencies(albert_decision_making_gencpp albert_decision_making_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS albert_decision_making_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)
_generate_msg_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)

### Generating Services
_generate_srv_eus(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
)

### Generating Module File
_generate_module_eus(albert_decision_making
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(albert_decision_making_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(albert_decision_making_generate_messages albert_decision_making_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_eus _albert_decision_making_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(albert_decision_making_geneus)
add_dependencies(albert_decision_making_geneus albert_decision_making_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS albert_decision_making_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)
_generate_msg_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)

### Generating Services
_generate_srv_lisp(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
)

### Generating Module File
_generate_module_lisp(albert_decision_making
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(albert_decision_making_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(albert_decision_making_generate_messages albert_decision_making_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_lisp _albert_decision_making_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(albert_decision_making_genlisp)
add_dependencies(albert_decision_making_genlisp albert_decision_making_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS albert_decision_making_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)
_generate_msg_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)

### Generating Services
_generate_srv_nodejs(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
)

### Generating Module File
_generate_module_nodejs(albert_decision_making
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(albert_decision_making_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(albert_decision_making_generate_messages albert_decision_making_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_nodejs _albert_decision_making_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(albert_decision_making_gennodejs)
add_dependencies(albert_decision_making_gennodejs albert_decision_making_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS albert_decision_making_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)
_generate_msg_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)

### Generating Services
_generate_srv_py(albert_decision_making
  "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
)

### Generating Module File
_generate_module_py(albert_decision_making
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(albert_decision_making_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(albert_decision_making_generate_messages albert_decision_making_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg" NAME_WE)
add_dependencies(albert_decision_making_generate_messages_py _albert_decision_making_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(albert_decision_making_genpy)
add_dependencies(albert_decision_making_genpy albert_decision_making_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS albert_decision_making_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/albert_decision_making
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(albert_decision_making_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(albert_decision_making_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/albert_decision_making
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(albert_decision_making_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(albert_decision_making_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/albert_decision_making
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(albert_decision_making_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(albert_decision_making_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/albert_decision_making
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(albert_decision_making_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(albert_decision_making_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/albert_decision_making
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(albert_decision_making_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(albert_decision_making_generate_messages_py std_msgs_generate_messages_py)
endif()
