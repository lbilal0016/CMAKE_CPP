find_package(Doxygen)   #   In the background a variable named DOXYGEN_FOUND is created.

if(DOXYGEN_FOUND)
    #   add_custom_target -> Run in the console
    #   must be selected from the drop-down menu between Build and Debug options in the task bar
    add_custom_target(
        docs
        ${DOXYGEN_EXECUTABLE}    #   ${DOXYGEN_EXECUTABLE} is set internally by find_package(Doxygen)
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/docs
    )
endif()
