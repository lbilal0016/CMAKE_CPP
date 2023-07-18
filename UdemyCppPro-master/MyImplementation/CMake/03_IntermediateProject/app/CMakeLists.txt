#   EXECUTABLE:
#   Creating final executable
add_executable(${EXECUTABLE_NAME} main.cc)  #   In CMake, variables are used as ${XX}

#   Linking libraries
target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})    #   (INTERFACE/PUBLIC/PRIVATE)
