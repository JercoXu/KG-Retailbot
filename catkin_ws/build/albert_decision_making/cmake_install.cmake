# Install script for directory: /home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jerco/Desktop/thesis/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/srv" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/srv/SymbolicPerception.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/action" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/action/ActiveInference.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/msg" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceAction.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceActionFeedback.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_decision_making/msg/ActiveInferenceFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/cmake" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/albert_decision_making-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/include/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/roseus/ros/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/common-lisp/ros/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/gennodejs/ros/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/jerco/Desktop/thesis/catkin_ws/devel/lib/python2.7/dist-packages/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/lib/python2.7/dist-packages/albert_decision_making")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/albert_decision_making.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/cmake" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/albert_decision_making-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making/cmake" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/albert_decision_makingConfig.cmake"
    "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/albert_decision_makingConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_decision_making" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/src/albert_decision_making/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/albert_decision_making" TYPE PROGRAM FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_decision_making/catkin_generated/installspace/ai_albert_perception_server.py")
endif()

