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

### BEGIN: MOVED TO SUBDIRECTORIES  ###
#   LIBRARY:
#   Creating .o object file for library (libraries)
#   add_library(${LIBRARY_NAME} source/my_lib.cc)  #   If library .cc data is in the same folder as .h, no include path setting is needed
#   target_include_directories(${LIBRARY_NAME} PUBLIC source/)    #   Include path setting (INTERFACE/PUBLIC/PRIVATE)

#   EXECUTABLE:
#   Creating final executable
#   add_executable(${EXECUTABLE_NAME} app/main.cc)  #   In CMake, variables are used as ${XX}

#   Linking libraries
#   target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})    #   (INTERFACE/PUBLIC/PRIVATE)

### END: MOVED TO SUBDIRECTORIES  ###

#   Letting main CMakeLists.txt data aware that there are CMakeLists.txt files in subdirectories:
add_subdirectory(source)
add_subdirectory(app)



