if(ENABLE_TESTING)
    set(TEST_MAIN "unit_tests")
    #   Variables for including exe sources and directories
    set(TEST_SOURCES
        "main.cc")
    set(TEST_INCLUDES
        "./")   #   current directory only

    #   EXECUTABLE:
    #   Creating final executable
    add_executable(${TEST_MAIN} ${TEST_SOURCES})  #   In CMake, variables are used as ${XX}

    target_include_directories(${TEST_MAIN} PUBLIC
        ${TEST_INCLUDES})

    #   Linking libraries: Before Fetch Content
    # target_link_libraries(${TEST_MAIN} PUBLIC
    #     ${LIBRARY_NAME}
    #     nlohmann_json)    #   (INTERFACE/PUBLIC/PRIVATE)

    target_link_libraries(
    ${TEST_MAIN} PUBLIC
        ${LIBRARY_NAME}
        # Deactivated libraries are already linked in my_lib library
        # nlohmann_json::nlohmann_json
        # fmt::fmt
        # spdlog::spdlog
        # cxxopts::cxxopts)
        Catch2::Catch2)

    #   printing the CMake content
    message("Exe Name: " ${TEST_MAIN})
    message("PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")
endif()
