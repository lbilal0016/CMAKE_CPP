# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/unit_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/unit_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/unit_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/unit_tests.dir/flags.make

tests/CMakeFiles/unit_tests.dir/main.cc.o: tests/CMakeFiles/unit_tests.dir/flags.make
tests/CMakeFiles/unit_tests.dir/main.cc.o: ../tests/main.cc
tests/CMakeFiles/unit_tests.dir/main.cc.o: tests/CMakeFiles/unit_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/unit_tests.dir/main.cc.o"
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/unit_tests.dir/main.cc.o -MF CMakeFiles/unit_tests.dir/main.cc.o.d -o CMakeFiles/unit_tests.dir/main.cc.o -c /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/tests/main.cc

tests/CMakeFiles/unit_tests.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unit_tests.dir/main.cc.i"
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/tests/main.cc > CMakeFiles/unit_tests.dir/main.cc.i

tests/CMakeFiles/unit_tests.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unit_tests.dir/main.cc.s"
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/tests/main.cc -o CMakeFiles/unit_tests.dir/main.cc.s

# Object files for target unit_tests
unit_tests_OBJECTS = \
"CMakeFiles/unit_tests.dir/main.cc.o"

# External object files for target unit_tests
unit_tests_EXTERNAL_OBJECTS =

tests/unit_tests: tests/CMakeFiles/unit_tests.dir/main.cc.o
tests/unit_tests: tests/CMakeFiles/unit_tests.dir/build.make
tests/unit_tests: src/my_lib/libLibrary.a
tests/unit_tests: _deps/fmt-build/libfmtd.a
tests/unit_tests: _deps/spdlog-build/libspdlogd.a
tests/unit_tests: tests/CMakeFiles/unit_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unit_tests"
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unit_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/unit_tests.dir/build: tests/unit_tests
.PHONY : tests/CMakeFiles/unit_tests.dir/build

tests/CMakeFiles/unit_tests.dir/clean:
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/unit_tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/unit_tests.dir/clean

tests/CMakeFiles/unit_tests.dir/depend:
	cd /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/tests /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests /home/ubuntu1/CMAKE_CPP/UdemyCppPro-master/MyImplementation/CMake/13_LTO/build/tests/CMakeFiles/unit_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/unit_tests.dir/depend

