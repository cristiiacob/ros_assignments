# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_assignments: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_assignments_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv" NAME_WE)
add_custom_target(_ros_assignments_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_assignments" "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_assignments
  "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_assignments
)

### Generating Module File
_generate_module_cpp(ros_assignments
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_assignments
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_assignments_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_assignments_generate_messages ros_assignments_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv" NAME_WE)
add_dependencies(ros_assignments_generate_messages_cpp _ros_assignments_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_assignments_gencpp)
add_dependencies(ros_assignments_gencpp ros_assignments_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_assignments_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_assignments
  "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_assignments
)

### Generating Module File
_generate_module_lisp(ros_assignments
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_assignments
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_assignments_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_assignments_generate_messages ros_assignments_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv" NAME_WE)
add_dependencies(ros_assignments_generate_messages_lisp _ros_assignments_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_assignments_genlisp)
add_dependencies(ros_assignments_genlisp ros_assignments_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_assignments_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_assignments
  "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_assignments
)

### Generating Module File
_generate_module_py(ros_assignments
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_assignments
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_assignments_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_assignments_generate_messages ros_assignments_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cristi/assignments/src/ros_assignments/srv/ServiceCall.srv" NAME_WE)
add_dependencies(ros_assignments_generate_messages_py _ros_assignments_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_assignments_genpy)
add_dependencies(ros_assignments_genpy ros_assignments_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_assignments_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_assignments)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_assignments
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_assignments_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_assignments)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_assignments
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_assignments_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_assignments)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_assignments\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_assignments
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_assignments_generate_messages_py std_msgs_generate_messages_py)
