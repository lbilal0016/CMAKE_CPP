#   configure_file moves the data config.hpp.in to build directory. In order to reach this build directory always following path should be used.
#   cmake doesn't only copy what it sees in config.hpp.in, but also it replaces @PROJECT_NAME@ with the project name that is defined at the top-level
#   CMakeLists.txt
#   ${CMAKE_BINARY_DIR} --> build folder of CMAke project (in variable form)
configure_file(
    "config.hpp.in"
    "${CMAKE_BINARY_DIR}/configured_files/include/config.hpp" ESCAPE_QUOTES
)
