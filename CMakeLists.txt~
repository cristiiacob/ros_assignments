cmake_minimum_required(VERSION 2.8.3)
project(ros_assignments)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
  std_msgs
  message_generation
  geometry_msgs
)

add_service_files(
  FILES
  ServiceCall.srv
  InputService.srv 
  StateService.srv
  TransformService.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  INCLUDE_DIRS include
#  LIBRARIES ros_assignments
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(ros_assignments
#   src/${PROJECT_NAME}/ros_assignments.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(ros_assignments ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
add_executable(averager src/${PROJECT_NAME}/averager.cpp)
add_dependencies(averager ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(averager ${catkin_LIBRARIES})

add_executable(triangle_generator src/${PROJECT_NAME}/triangle_generator.cpp)
add_dependencies(triangle_generator ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(triangle_generator ${catkin_LIBRARIES})

add_executable(square_generator src/${PROJECT_NAME}/square_generator.cpp)
add_dependencies(square_generator ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(square_generator ${catkin_LIBRARIES})

add_executable(constant_generator src/${PROJECT_NAME}/constant_generator.cpp)
add_dependencies(constant_generator ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(constant_generator ${catkin_LIBRARIES})

add_executable(constant_changer src/${PROJECT_NAME}/constant_changer.cpp)
add_dependencies(constant_changer ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(constant_changer ${catkin_LIBRARIES})

add_executable(state_machine src/${PROJECT_NAME}/state_machine.cpp)
add_dependencies(state_machine ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(state_machine ${catkin_LIBRARIES})

add_executable(state_machine_querry src/${PROJECT_NAME}/state_machine_querry.cpp)
add_dependencies(state_machine_querry ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(state_machine_querry ${catkin_LIBRARIES})

add_executable(state_machine_input src/${PROJECT_NAME}/state_machine_input.cpp)
add_dependencies(state_machine_input ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(state_machine_input ${catkin_LIBRARIES})

set(TEST_SRCS
  test/main.cpp
  test/${PROJECT_NAME}/triangle_generator.cpp 
#  test/${PROJECT_NAME}/square_generator.cpp
)

catkin_add_gtest(${PROJECT_NAME}-test ${TEST_SRCS})
if(TARGET ${PROJECT_NAME}-test)
  target_link_libraries(${PROJECT_NAME}-test ${catkin_LIBRARIES} ${YAML_CPP_LIBRARIES})
endif()

add_executable(transform_client src/${PROJECT_NAME}/transform_client.cpp)
add_dependencies(transform_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(transform_client ${catkin_LIBRARIES})

add_executable(transform_listener src/${PROJECT_NAME}/transform_listener.cpp)
add_dependencies(transform_listener ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(transform_listener ${catkin_LIBRARIES})

