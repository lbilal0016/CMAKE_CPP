#include <iostream>
#include "my_lib.h"
#include <config.hpp>

#include <nlohmann/json.hpp>

int main()
{
    std::cout <<  "Project Name: " << project_name << std::endl;

/*     std::cout << "Json Lib Version : " << NLOHMANN_JSON_VERSION_MAJOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_MINOR;
    std::cout << "." << NLOHMANN_JSON_VERSION_PATCH;
    std::cout << std::endl; */

    print_json_version();

    print_hello_world();

    return 0;
}
