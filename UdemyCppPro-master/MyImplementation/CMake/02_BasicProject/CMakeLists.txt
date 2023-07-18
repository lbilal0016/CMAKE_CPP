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

#   setting variables
set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

#   Creating .o object file for library (libraries)
add_library(${LIBRARY_NAME} my_lib.cc)  #   If library .cc data is in the same folder as .h, no include path setting is needed

#   Creating final executable
add_executable(${EXECUTABLE_NAME} main.cc)  #   In CMake, variables are used as ${XX}

#   Linking libraries
target_link_libraries(${EXECUTABLE_NAME} ${LIBRARY_NAME})
