#   Variables for including exe sources and directories
set(EXE_SOURCES
    "main.cc")
set(EXE_INCLUDES
    "./")   #   current directory only

#   EXECUTABLE:
#   Creating final executable
add_executable(${EXECUTABLE_NAME} ${EXE_SOURCES})  #   In CMake, variables are used as ${XX}

target_include_directories(${EXECUTABLE_NAME} PUBLIC
    ${EXE_INCLUDES})

#   Linking libraries: Before Fetch Content
# target_link_libraries(${EXECUTABLE_NAME} PUBLIC
#     ${LIBRARY_NAME}
#     nlohmann_json)    #   (INTERFACE/PUBLIC/PRIVATE)

target_link_libraries(
  ${EXECUTABLE_NAME} PUBLIC
    ${LIBRARY_NAME}
    nlohmann_json::nlohmann_json
    fmt::fmt
    spdlog::spdlog
    cxxopts::cxxopts)

#   printing the CMake content
message("Exe Name: " ${EXECUTABLE_NAME})
message("PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")

if(ENABLE_WARNINGS)
    target_set_warnings(
        ${EXECUTABLE_NAME}
        ON
        OFF
    )
endif(ENABLE_WARNINGS)
