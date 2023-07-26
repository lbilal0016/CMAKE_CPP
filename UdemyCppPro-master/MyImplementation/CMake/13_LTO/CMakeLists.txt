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

option(ENABLE_TESTING "Enable a Unit Testing Build" ON)
option(ENABLE_WARNINGS "Enable compiler warnings for a target" ON)
option(ENABLE_WARNINGS_AS_ERRORS "Enable compiler warnings as errors" OFF)

option(ENABLE_SANITIZE_ADDR "Enable address sanitizer" ON)
option(ENABLE_SANITIZE_UNDEF "Enable undefined sanitizer" ON)

option(ENABLE_LTO "Enable LTO/IPO" ON)

option(USE_CPM "Whether to use CPM" ON)

#   setting variables
set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")   #   CMake knows where to look for includes by checking this variable
include(AddGitSubmodule)
include(Docs)

if(ENABLE_WARNINGS)
    include(Warnings)
endif(ENABLE_WARNINGS)

if(ENABLE_SANITIZE_ADDR OR ENABLE_SANITIZE_UNDEF)
    include(Sanitizer)
    add_sanitizer_flags()
endif()

if(ENABLE_LTO)
    include(LTO)
endif(ENABLE_LTO)


#   Without FetchContent
#   add_git_submodule(external/json)

if(USE_CPM)
    include(CPM)
    message(STATUS "CPM is used for external libraries")
    #   gh ---> Use GitHub for downloading of library
    #   gh:librarylink#version
    cpmaddpackage("gh:nlohmann/json#v3.11.2")   # Lib-1
    cpmaddpackage("gh:fmtlib/fmt#10.0.0")   # Lib-2
    cpmaddpackage("gh:gabime/spdlog#v1.12.0")   # Lib-3
    cpmaddpackage("gh:jarro2783/cxxopts#v3.1.1")    # Lib-4
    cpmaddpackage("gh:catchorg/Catch2#v2.13.9") # Lib-5

else()
    #   FETCH CONTENT

    include(FetchContent)
    message(STATUS "FetchContent is used for external libraries")
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
endif()

#   Letting main CMakeLists.txt data aware that there are CMakeLists.txt files in subdirectories:
add_subdirectory(configured)
add_subdirectory(external)
add_subdirectory(src)
add_subdirectory(app)
add_subdirectory(tests)




