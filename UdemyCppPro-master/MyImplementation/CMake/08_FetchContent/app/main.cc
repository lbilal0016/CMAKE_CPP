#include <iostream>

#include <nlohmann/json.hpp>
#include <cxxopts.hpp>
#include <fmt/format.h>
#include <spdlog/spdlog.h>

#include "my_lib.h"
#include <config.hpp>


int main()
{
    std::cout <<  "Project Name: " << project_name << std::endl;

/*     std::cout << "Json Lib Version : " << NLOHMANN_JSON_VERSION_MAJOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_MINOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_PATCH;
    std::cout << std::endl; */

    print_json_version();

    std::cout << "FMT Lib Version : " << FMT_VERSION<<std::endl;

    std::cout << "CXXOPTS Lib Version : ";
    std::cout << CXXOPTS__VERSION_MAJOR;
    std::cout << "." << CXXOPTS__VERSION_MINOR;
    std::cout << "." << CXXOPTS__VERSION_PATCH;
    std::cout << std::endl;

    std::cout << "SPDLOG Lib Version : ";
    std::cout << SPDLOG_VER_MAJOR;
    std::cout << "." << SPDLOG_VER_MINOR;
    std::cout << "." << SPDLOG_VER_PATCH;
    std::cout << std::endl;

    print_hello_world();

    std::cout << "Compiled : 24-07-2023, 10:39\n";

    return 0;
}
