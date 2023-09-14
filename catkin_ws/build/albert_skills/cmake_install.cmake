# Install script for directory: /home/jerco/Desktop/thesis/catkin_ws/src/albert_skills

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/action" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/src/albert_skills/action/LookForItem.action"
    "/home/jerco/Desktop/thesis/catkin_ws/src/albert_skills/action/Pick.action"
    "/home/jerco/Desktop/thesis/catkin_ws/src/albert_skills/action/Place.action"
    "/home/jerco/Desktop/thesis/catkin_ws/src/albert_skills/action/Move.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/msg" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemAction.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemActionGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemActionResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemActionFeedback.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/LookForItemFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/msg" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickAction.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickActionGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickActionResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickActionFeedback.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PickFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/msg" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceAction.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceActionGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceActionResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceActionFeedback.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/PlaceFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/msg" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveAction.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveActionGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveActionResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveActionFeedback.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveGoal.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveResult.msg"
    "/home/jerco/Desktop/thesis/catkin_ws/devel/share/albert_skills/msg/MoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/cmake" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_skills/catkin_generated/installspace/albert_skills-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/include/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/roseus/ros/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/common-lisp/ros/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/share/gennodejs/ros/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/jerco/Desktop/thesis/catkin_ws/devel/lib/python2.7/dist-packages/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/jerco/Desktop/thesis/catkin_ws/devel/lib/python2.7/dist-packages/albert_skills")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_skills/catkin_generated/installspace/albert_skills.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/cmake" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/build/albert_skills/catkin_generated/installspace/albert_skills-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills/cmake" TYPE FILE FILES
    "/home/jerco/Desktop/thesis/catkin_ws/build/albert_skills/catkin_generated/installspace/albert_skillsConfig.cmake"
    "/home/jerco/Desktop/thesis/catkin_ws/build/albert_skills/catkin_generated/installspace/albert_skillsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/albert_skills" TYPE FILE FILES "/home/jerco/Desktop/thesis/catkin_ws/src/albert_skills/package.xml")
endif()

