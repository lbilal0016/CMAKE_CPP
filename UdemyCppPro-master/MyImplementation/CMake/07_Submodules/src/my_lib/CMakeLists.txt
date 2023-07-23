#   libraries to include
set(LIBRARY_SOURCES
    "my_lib.cc")
#   Directories to the include files
set(LIBRARY_INCLUDES
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include"
    "${PROJECT_SOURCE_DIR}/external/json/include")

#   Creating .o object file for library (libraries)
add_library(${LIBRARY_NAME} STATIC
    ${LIBRARY_SOURCES})  #   The option is per default STATIC
target_link_libraries(${LIBRARY_NAME} PUBLIC
    nlohmann_json)
target_include_directories(${LIBRARY_NAME} PUBLIC
    ${LIBRARY_INCLUDES})     #   Include path setting (INTERFACE/PUBLIC/PRIVATE)


