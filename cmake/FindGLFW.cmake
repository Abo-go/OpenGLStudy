########################################################################
# CMake module for finding GLFW
#
# The following variables will be defined:
#
#  GLFW_FOUND
#  GLFW_INCLUDE_DIR
#  GLFW_LIBRARY
#

find_path(GLFW_INCLUDE_DIR
  NAMES glfw3.h
  PATHS ${PROJECT_SOURCE_DIR}/thirdparty/glfw/include/GLFW
  NO_DEFAULT_PATH)
find_library(GLFW_LIBRARY_RELEASE
  NAMES glfw3
  PATHS ${PROJECT_SOURCE_DIR}/thirdparty/glfw/lib/Release
  NO_DEFAULT_PATH)
find_library(GLFW_LIBRARY_DEBUG
  NAMES glfw3
  PATHS ${PROJECT_SOURCE_DIR}/thirdparty/glfw/lib/Debug
  NO_DEFAULT_PATH)

set(GLFW_LIBRARY optimized ${GLFW_LIBRARY_RELEASE} debug ${GLFW_LIBRARY_DEBUG})

include(FindPackageHandleStandardArgs)
#find_package_handle_standard_args(GLFW DEFAULT_MSG GLFW_LIBRARY GLFW_LIBRARY_DEBUG GLFW_INCLUDE_DIR)
find_package_handle_standard_args(GLFW DEFAULT_MSG GLFW_LIBRARY GLFW_INCLUDE_DIR)
