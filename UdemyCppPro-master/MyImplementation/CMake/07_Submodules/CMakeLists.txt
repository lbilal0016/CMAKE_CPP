#################################################
########STEPS FOR WORKING WITH CMAKE#############
#   0. Create code and CMake file
#   1. mkdir build
#   2. cd build
#   3. cmake ..
#   4a. cmake --build . (Compile all targets)
#   4b. make


cmake_minimum_required(VERSION 3.22)
#   defining the minimum cmake version that is required by the project.
#   it is good practice to start the cmake file with that command

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)
#   project(Project_name project_version major.minor.patch LANGUAGE C CXX (Cpp))

#   Below the standard CMake variables which we use to assign values according to our requirements
#   They must be set all the time
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

#   setting variables
set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")
include(AddGitSubmodule)

add_git_submodule(external/json)

#   Letting main CMakeLists.txt data aware that there are CMakeLists.txt files in subdirectories:
add_subdirectory(configured)
add_subdirectory(external)
add_subdirectory(src)
add_subdirectory(app)




