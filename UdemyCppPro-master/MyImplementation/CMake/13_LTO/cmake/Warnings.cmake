function(target_set_warnings TARGET ENABLE ENABLE_AS_ERRORS)
    if(NOT ${ENABLED})
        message(STATUS "Warnings disabled for: ${TARGET}")
    endif()
    message(STATUS "Warnings enabled for ${TARGET}")

    set(MSVC_WARNINGS
        /W4
        /permissive-)

    set(CLANG_WARNINGS
        -Wall
        -Wextra
        -Wpedantic)

    set(GCC_WARNINGS
        ${CLANG_WARNINGS})

    if(${ENABLED_AS_ERRORS})
        set(MSVC_WARNINGS ${MSVC_WARNINGS} /WX) #   For Windows compiler
        set(CLANG_WARNINGS ${CLANG_WARNINGS} -Werror)   #   MacOS compiler
        set(GCC_WARNINGS ${GCC_WARNINGS} -Werror)   #   Linux compiler
    endif()

    if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
        set(WARNINGS ${MSVC_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        set(WARNINGS ${CLANG_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
        set(WARNINGS ${GCC_WARNINGS})
    else()
        message(STATUS "Compiler type is not supported.")
    endif()

    target_compile_options(${TARGET} PRIVATE ${WARNINGS})
    message(STATUS ${WARNINGS})

endfunction(target_set_warnings)
