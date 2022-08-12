# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laptop_state: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ilaptop_state:/home/faisal/task_ws/src/laptop_state/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laptop_state_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_custom_target(_laptop_state_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laptop_state" "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" ""
)

get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_custom_target(_laptop_state_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laptop_state" "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laptop_state
)
_generate_msg_cpp(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laptop_state
)

### Generating Services

### Generating Module File
_generate_module_cpp(laptop_state
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laptop_state
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laptop_state_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laptop_state_generate_messages laptop_state_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_cpp _laptop_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_cpp _laptop_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laptop_state_gencpp)
add_dependencies(laptop_state_gencpp laptop_state_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laptop_state_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laptop_state
)
_generate_msg_eus(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laptop_state
)

### Generating Services

### Generating Module File
_generate_module_eus(laptop_state
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laptop_state
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(laptop_state_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(laptop_state_generate_messages laptop_state_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_eus _laptop_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_eus _laptop_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laptop_state_geneus)
add_dependencies(laptop_state_geneus laptop_state_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laptop_state_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laptop_state
)
_generate_msg_lisp(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laptop_state
)

### Generating Services

### Generating Module File
_generate_module_lisp(laptop_state
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laptop_state
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laptop_state_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laptop_state_generate_messages laptop_state_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_lisp _laptop_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_lisp _laptop_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laptop_state_genlisp)
add_dependencies(laptop_state_genlisp laptop_state_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laptop_state_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laptop_state
)
_generate_msg_nodejs(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laptop_state
)

### Generating Services

### Generating Module File
_generate_module_nodejs(laptop_state
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laptop_state
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(laptop_state_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(laptop_state_generate_messages laptop_state_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_nodejs _laptop_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_nodejs _laptop_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laptop_state_gennodejs)
add_dependencies(laptop_state_gennodejs laptop_state_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laptop_state_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state
)
_generate_msg_py(laptop_state
  "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state
)

### Generating Services

### Generating Module File
_generate_module_py(laptop_state
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laptop_state_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laptop_state_generate_messages laptop_state_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/laptop_battery.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_py _laptop_state_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/faisal/task_ws/src/laptop_state/msg/syst_msgs.msg" NAME_WE)
add_dependencies(laptop_state_generate_messages_py _laptop_state_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laptop_state_genpy)
add_dependencies(laptop_state_genpy laptop_state_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laptop_state_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laptop_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laptop_state
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(laptop_state_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(laptop_state_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laptop_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laptop_state
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(laptop_state_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(laptop_state_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laptop_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laptop_state
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(laptop_state_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(laptop_state_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laptop_state)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laptop_state
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(laptop_state_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(laptop_state_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laptop_state
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(laptop_state_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(laptop_state_generate_messages_py sensor_msgs_generate_messages_py)
endif()
