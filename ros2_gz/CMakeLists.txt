cmake_minimum_required(VERSION 3.8)
project(ros2_gz)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(ament_cmake_ros REQUIRED)
find_package(rclcpp REQUIRED)
find_package(gazebo_ros REQUIRED)
find_package(gazebo_dev REQUIRED)
find_package(std_msgs REQUIRED)



add_library(GzPlugin SHARED src/GzPlugin.cpp)
target_compile_features(GzPlugin PUBLIC c_std_99 cxx_std_17)  # Require C99 and C++17
target_include_directories(GzPlugin PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>)
ament_target_dependencies(GzPlugin
  "rclcpp" "gazebo_ros" "gazebo_dev" "std_msgs")

install(
  DIRECTORY include launch urdf worlds rviz gazebo 
  DESTINATION share/${PROJECT_NAME}
)

install(TARGETS GzPlugin
  EXPORT export_${PROJECT_NAME}
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)
ament_export_include_directories(include)
ament_export_libraries(GzPlugin)
ament_export_targets(export_${PROJECT_NAME})
ament_package()
