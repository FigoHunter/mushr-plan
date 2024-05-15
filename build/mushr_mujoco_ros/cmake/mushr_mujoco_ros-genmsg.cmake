# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mushr_mujoco_ros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imushr_mujoco_ros:/home/robot/catkin_ws/src/mushr_mujoco_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iackermann_msgs:/opt/ros/melodic/share/ackermann_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mushr_mujoco_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_custom_target(_mushr_mujoco_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mushr_mujoco_ros" "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:sensor_msgs/Imu:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_custom_target(_mushr_mujoco_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mushr_mujoco_ros" "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" "mushr_mujoco_ros/BodyState:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:sensor_msgs/Imu:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_mujoco_ros
)
_generate_msg_cpp(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_mujoco_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(mushr_mujoco_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_mujoco_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mushr_mujoco_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mushr_mujoco_ros_generate_messages mushr_mujoco_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_cpp _mushr_mujoco_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_cpp _mushr_mujoco_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_mujoco_ros_gencpp)
add_dependencies(mushr_mujoco_ros_gencpp mushr_mujoco_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_mujoco_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_mujoco_ros
)
_generate_msg_eus(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_mujoco_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(mushr_mujoco_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_mujoco_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mushr_mujoco_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mushr_mujoco_ros_generate_messages mushr_mujoco_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_eus _mushr_mujoco_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_eus _mushr_mujoco_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_mujoco_ros_geneus)
add_dependencies(mushr_mujoco_ros_geneus mushr_mujoco_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_mujoco_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_mujoco_ros
)
_generate_msg_lisp(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_mujoco_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(mushr_mujoco_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_mujoco_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mushr_mujoco_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mushr_mujoco_ros_generate_messages mushr_mujoco_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_lisp _mushr_mujoco_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_lisp _mushr_mujoco_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_mujoco_ros_genlisp)
add_dependencies(mushr_mujoco_ros_genlisp mushr_mujoco_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_mujoco_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_mujoco_ros
)
_generate_msg_nodejs(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_mujoco_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mushr_mujoco_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_mujoco_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mushr_mujoco_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mushr_mujoco_ros_generate_messages mushr_mujoco_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_nodejs _mushr_mujoco_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_nodejs _mushr_mujoco_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_mujoco_ros_gennodejs)
add_dependencies(mushr_mujoco_ros_gennodejs mushr_mujoco_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_mujoco_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros
)
_generate_msg_py(mushr_mujoco_ros
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros
)

### Generating Services

### Generating Module File
_generate_module_py(mushr_mujoco_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mushr_mujoco_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mushr_mujoco_ros_generate_messages mushr_mujoco_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyState.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_py _mushr_mujoco_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/mushr_mujoco_ros/msg/BodyStateArray.msg" NAME_WE)
add_dependencies(mushr_mujoco_ros_generate_messages_py _mushr_mujoco_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mushr_mujoco_ros_genpy)
add_dependencies(mushr_mujoco_ros_genpy mushr_mujoco_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mushr_mujoco_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_mujoco_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mushr_mujoco_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mushr_mujoco_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mushr_mujoco_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET ackermann_msgs_generate_messages_cpp)
  add_dependencies(mushr_mujoco_ros_generate_messages_cpp ackermann_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mushr_mujoco_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_mujoco_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mushr_mujoco_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mushr_mujoco_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mushr_mujoco_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET ackermann_msgs_generate_messages_eus)
  add_dependencies(mushr_mujoco_ros_generate_messages_eus ackermann_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mushr_mujoco_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_mujoco_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mushr_mujoco_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mushr_mujoco_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mushr_mujoco_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET ackermann_msgs_generate_messages_lisp)
  add_dependencies(mushr_mujoco_ros_generate_messages_lisp ackermann_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mushr_mujoco_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_mujoco_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mushr_mujoco_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mushr_mujoco_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mushr_mujoco_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET ackermann_msgs_generate_messages_nodejs)
  add_dependencies(mushr_mujoco_ros_generate_messages_nodejs ackermann_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mushr_mujoco_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mushr_mujoco_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mushr_mujoco_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mushr_mujoco_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET ackermann_msgs_generate_messages_py)
  add_dependencies(mushr_mujoco_ros_generate_messages_py ackermann_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mushr_mujoco_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
