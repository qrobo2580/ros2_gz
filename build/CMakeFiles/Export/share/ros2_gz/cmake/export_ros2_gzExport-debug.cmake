#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ros2_gz::GzPlugin" for configuration "Debug"
set_property(TARGET ros2_gz::GzPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ros2_gz::GzPlugin PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libGzPlugin.so"
  IMPORTED_SONAME_DEBUG "libGzPlugin.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS ros2_gz::GzPlugin )
list(APPEND _IMPORT_CHECK_FILES_FOR_ros2_gz::GzPlugin "${_IMPORT_PREFIX}/lib/libGzPlugin.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
