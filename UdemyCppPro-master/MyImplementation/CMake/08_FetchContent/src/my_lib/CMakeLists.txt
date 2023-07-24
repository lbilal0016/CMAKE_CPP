#   libraries to include
set(LIBRARY_SOURCES
    "my_lib.cc")
#   Directories to the include files

set(LIBRARY_HEADERS "my_lib.h")

set(LIBRARY_INCLUDES
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include")
    #"${PROJECT_SOURCE_DIR}/build/_deps/nlohmann_json-src/include/nlohmann")

#   NOTES:
#   FOR EXTERNAL LIBRARIES, ADDING THE PATH FOR INCLUDE FILES ARE NOT NECESSARY FOR FETCH CONTENT
#   ONLY CONFIG FILE PATH IS NEEDED, AS IT IS USED IN MAIN.CC AND IT IS INCLUDED THROUGH MY_LIB.CC.

#   WHILE USING GITSUB, THE PATH FOR THE INCLUDE FILES MUST BE DEFINED IN LIBRARY_INCLUDES VARIABLE
#   FOR THE MY_LIB.CC CMAKELISTS.TXT DATA.

#   Creating .o object file for library (libraries)
add_library(${LIBRARY_NAME} STATIC
    ${LIBRARY_SOURCES} ${LIBRARY_HEADERS})  #   The option is per default STATIC

target_include_directories(${LIBRARY_NAME} PUBLIC
    ${LIBRARY_INCLUDES})     #   Include path setting (INTERFACE/PUBLIC/PRIVATE)

target_link_libraries(
          ${LIBRARY_NAME} PUBLIC
          nlohmann_json::nlohmann_json
          fmt::fmt
          spdlog::spdlog
          cxxopts::cxxopts)




