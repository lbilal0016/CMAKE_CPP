#   Creating .o object file for library (libraries)
add_library(${LIBRARY_NAME} my_lib.cc)  #   If library .cc data is in the same folder as .h, no include path setting is needed
target_include_directories(${LIBRARY_NAME} PUBLIC
"./"
"${CMAKE_BINARY_DIR}/configured_files/include")    #   Include path setting (INTERFACE/PUBLIC/PRIVATE)

