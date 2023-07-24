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
include(Docs)

#   Without FetchContent
#   add_git_submodule(external/json)

#   FETCH CONTENT

include(FetchContent)

#   Lib-1
FetchContent_Declare(
    nlohmann_json
    GIT_REPOSITORY https://github.com/nlohmann/json
    GIT_TAG v3.11.2 #   Repo version
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(nlohmann_json)

#   Lib-2
FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt
    GIT_TAG 10.0.0  #   Repo version
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(fmt)

#   Lib-3
FetchContent_Declare(
    spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog
    GIT_TAG  v1.12.0   #   Repo version
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(spdlog)

#   Lib-4
FetchContent_Declare(
    cxxopts
    GIT_REPOSITORY https://github.com/jarro2783/cxxopts
    GIT_TAG  v3.1.1   #   Repo version
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(cxxopts)

#   Lib-5
FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2
    GIT_TAG   v2.13.9    #   Repo version
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(Catch2)




#   Letting main CMakeLists.txt data aware that there are CMakeLists.txt files in subdirectories:
add_subdirectory(configured)
add_subdirectory(external)
add_subdirectory(src)
add_subdirectory(app)




