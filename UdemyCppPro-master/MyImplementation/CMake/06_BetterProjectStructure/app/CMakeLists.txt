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

#   Linking libraries
target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})    #   (INTERFACE/PUBLIC/PRIVATE)

#   printing the CMake content
message("Exe Name: " ${EXECUTABLE_NAME})
