cmake_minimum_required(VERSION 3.8)
project(mros2_interface)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)

find_package(rosidl_default_generators REQUIRED)

# Add executables here
# add_executable(my_node src/my_node.cpp)
# ament_target_dependencies(my_node
#   rclcpp
# )
rosidl_generate_interfaces( ${PROJECT_NAME}
  "msg/CustomMsg.msg"
)

# Install targets
# install(TARGETS
#   my_node
#   DESTINATION lib/${PROJECT_NAME}
# )

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
