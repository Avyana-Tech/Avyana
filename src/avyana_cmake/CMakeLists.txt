cmake_minimum_required(VERSION 3.14)
project(avyana_cmake NONE)

# find dependencies
find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

list(APPEND ${PROJECT_NAME}_CONFIG_EXTRAS
  "avyana_cmake-extras.cmake"
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package(
  INSTALL_TO_SHARE
    cmake
)
