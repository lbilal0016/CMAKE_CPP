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

add_executable(HelloWorldExecutable main.cc)
