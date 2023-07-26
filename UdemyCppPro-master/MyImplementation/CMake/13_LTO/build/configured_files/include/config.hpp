#pragma once

#include <cstdint>
#include <string_view>

//  static constexpr --> better practice than #define in c++
static constexpr std::string_view project_name = "CppProjectTemplate";
static constexpr std::string_view project_version = "1.0.0";
static constexpr std::int32_t project_version_major{1};
static constexpr std::int32_t project_version_minor{0};
static constexpr std::int32_t project_version_patch{0};
static constexpr std::int32_t project_version_tweak{};
static constexpr std::string_view git_sha = "";


