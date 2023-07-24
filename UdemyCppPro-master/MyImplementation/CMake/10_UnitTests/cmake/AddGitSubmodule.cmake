#   function(function_name function_parameters)
function(add_git_submodule dir)
    find_package(Git REQUIRED)  #   Preimplemented cmake function to find things in PC
                                #   REQUIRED -> It must definetely be found

    set(FULL_PATH ${CMAKE_SOURCE_DIR}/${dir})

    #   If Git directory is not found, download git repository
    if(NOT EXISTS ${FULL_PATH}/CMakeLists.txt)
        execute_process(COMMAND ${GIT_EXECUTABLE}
            submodule update --init --recursive -- ${dir}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    #   If there is no CMakeLists.txt after the download of repo, ...
    if(EXISTS ${FULL_PATH}/CMakeLists.txt)
        message("Submodule ${FULL_PATH} is a CMake project already.")
        add_subdirectory(${dir})
    else()
        message("Submodule ${FULL_PATH} is NO CMake Project")
    endif()

endfunction(add_git_submodule dir)
