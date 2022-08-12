# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "battery_state: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibattery_state:/home/faisal/task_ws/src/battery_state/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(battery_state_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_custom_target(_battery_state_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "battery_state" "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" ""
)

get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_custom_target(_battery_state_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "battery_state" "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_state
)
_generate_msg_cpp(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_state
)

### Generating Services

### Generating Module File
_generate_module_cpp(battery_state
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_state
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(battery_state_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(battery_state_generate_messages battery_state_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_cpp _battery_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_cpp _battery_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_state_gencpp)
add_dependencies(battery_state_gencpp battery_state_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_state_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_state
)
_generate_msg_eus(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_state
)

### Generating Services

### Generating Module File
_generate_module_eus(battery_state
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_state
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(battery_state_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(battery_state_generate_messages battery_state_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_eus _battery_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_eus _battery_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_state_geneus)
add_dependencies(battery_state_geneus battery_state_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_state_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_state
)
_generate_msg_lisp(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_state
)

### Generating Services

### Generating Module File
_generate_module_lisp(battery_state
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_state
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(battery_state_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(battery_state_generate_messages battery_state_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_lisp _battery_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_lisp _battery_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_state_genlisp)
add_dependencies(battery_state_genlisp battery_state_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_state_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_state
)
_generate_msg_nodejs(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_state
)

### Generating Services

### Generating Module File
_generate_module_nodejs(battery_state
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_state
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(battery_state_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(battery_state_generate_messages battery_state_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_nodejs _battery_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_nodejs _battery_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_state_gennodejs)
add_dependencies(battery_state_gennodejs battery_state_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_state_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state
)
_generate_msg_py(battery_state
  "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state
)

### Generating Services

### Generating Module File
_generate_module_py(battery_state
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(battery_state_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(battery_state_generate_messages battery_state_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_py _battery_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/battery_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(battery_state_generate_messages_py _battery_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_state_genpy)
add_dependencies(battery_state_genpy battery_state_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_state_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_state
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(battery_state_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(battery_state_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_state
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(battery_state_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(battery_state_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_state
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(battery_state_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(battery_state_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_state
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(battery_state_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(battery_state_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_state
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(battery_state_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(battery_state_generate_messages_py sensor_msgs_generate_messages_py)
endif()
