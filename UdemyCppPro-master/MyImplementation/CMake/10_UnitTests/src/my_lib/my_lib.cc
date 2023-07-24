#include <iostream>
#include <cstdint>
#include "my_lib.h"

#include <nlohmann/json.hpp>
#include <cxxopts.hpp>
#include <fmt/format.h>
#include <spdlog/spdlog.h>

void print_hello_world()
{
    std::cout << "Execution of project 04_VariabblesOptions is successful.\n";
}

 void print_json_version()
{
    std::cout << "Json Lib Version : ";
    std::cout << NLOHMANN_JSON_VERSION_MAJOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_MINOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_PATCH;
    std::cout << std::endl;
}

std::uint32_t factorial(std::uint32_t number)
{
    return number <= 1 ? 1 : factorial(number-1)*number;
}
