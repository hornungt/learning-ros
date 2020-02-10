# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "relearning: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irelearning:/root/catkin_ws/src/relearning/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(relearning_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_custom_target(_relearning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "relearning" "/root/catkin_ws/src/relearning/msg/Custom.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(relearning
  "/root/catkin_ws/src/relearning/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/relearning
)

### Generating Services

### Generating Module File
_generate_module_cpp(relearning
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/relearning
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(relearning_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(relearning_generate_messages relearning_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_dependencies(relearning_generate_messages_cpp _relearning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(relearning_gencpp)
add_dependencies(relearning_gencpp relearning_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS relearning_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(relearning
  "/root/catkin_ws/src/relearning/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/relearning
)

### Generating Services

### Generating Module File
_generate_module_eus(relearning
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/relearning
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(relearning_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(relearning_generate_messages relearning_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_dependencies(relearning_generate_messages_eus _relearning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(relearning_geneus)
add_dependencies(relearning_geneus relearning_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS relearning_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(relearning
  "/root/catkin_ws/src/relearning/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/relearning
)

### Generating Services

### Generating Module File
_generate_module_lisp(relearning
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/relearning
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(relearning_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(relearning_generate_messages relearning_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_dependencies(relearning_generate_messages_lisp _relearning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(relearning_genlisp)
add_dependencies(relearning_genlisp relearning_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS relearning_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(relearning
  "/root/catkin_ws/src/relearning/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/relearning
)

### Generating Services

### Generating Module File
_generate_module_nodejs(relearning
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/relearning
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(relearning_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(relearning_generate_messages relearning_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_dependencies(relearning_generate_messages_nodejs _relearning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(relearning_gennodejs)
add_dependencies(relearning_gennodejs relearning_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS relearning_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(relearning
  "/root/catkin_ws/src/relearning/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/relearning
)

### Generating Services

### Generating Module File
_generate_module_py(relearning
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/relearning
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(relearning_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(relearning_generate_messages relearning_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/relearning/msg/Custom.msg" NAME_WE)
add_dependencies(relearning_generate_messages_py _relearning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(relearning_genpy)
add_dependencies(relearning_genpy relearning_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS relearning_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/relearning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/relearning
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(relearning_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/relearning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/relearning
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(relearning_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/relearning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/relearning
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(relearning_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/relearning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/relearning
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(relearning_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/relearning)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/relearning\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/relearning
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(relearning_generate_messages_py std_msgs_generate_messages_py)
endif()
