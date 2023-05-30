# Install script for directory: /home/humble/control_ws/src/ros2_gz

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/llvm-objdump-14")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE DIRECTORY FILES
    "/home/humble/control_ws/src/ros2_gz/include"
    "/home/humble/control_ws/src/ros2_gz/launch"
    "/home/humble/control_ws/src/ros2_gz/urdf"
    "/home/humble/control_ws/src/ros2_gz/worlds"
    "/home/humble/control_ws/src/ros2_gz/rviz"
    "/home/humble/control_ws/src/ros2_gz/gazebo"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/humble/control_ws/src/build/libGzPlugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so"
         OLD_RPATH "/opt/ros/humble/lib:/opt/ros/humble/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-14" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libGzPlugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/opt/ros/humble/lib/python3.10/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/library_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/ros2_gz")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/ros2_gz")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/environment" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_index/share/ament_index/resource_index/packages/ros2_gz")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake/export_ros2_gzExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake/export_ros2_gzExport.cmake"
         "/home/humble/control_ws/src/build/CMakeFiles/Export/share/ros2_gz/cmake/export_ros2_gzExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake/export_ros2_gzExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake/export_ros2_gzExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES "/home/humble/control_ws/src/build/CMakeFiles/Export/share/ros2_gz/cmake/export_ros2_gzExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES "/home/humble/control_ws/src/build/CMakeFiles/Export/share/ros2_gz/cmake/export_ros2_gzExport-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES "/home/humble/control_ws/src/build/ament_cmake_export_targets/ament_cmake_export_targets-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz/cmake" TYPE FILE FILES
    "/home/humble/control_ws/src/build/ament_cmake_core/ros2_gzConfig.cmake"
    "/home/humble/control_ws/src/build/ament_cmake_core/ros2_gzConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros2_gz" TYPE FILE FILES "/home/humble/control_ws/src/ros2_gz/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/humble/control_ws/src/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
