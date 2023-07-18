#############
##VARIABLES##
#############

# Note: Variables can only be strings
# Note: Single or double quotes for variable naes or values have no meaning to MAke

# CC: Program for compiling C Programs, default cc
# CXX: Program for compiling C++ Programs, default g++
# CFLAGS: Extra flags to give C Compiler
# CXXFLAGS: Extra flags to give C++ Compiler
# LDFLAGS: Extra flags to give to the linker

DEBUG = 1
EXECUTABLE_NAME = main

CXX_STANDARD = c++17
CXX_WARNINGS = -Wall -Wextra -Wpedantic	#	Show all warnings
CXX = g++	#	Use g++ as cpp compiler
CXXFLAGS = $(CXX_WARNINGS) -std=$(CXX_STANDARD)
CPPFLAGS =
LDFLAGS =

ifeq ($(DEBUG), 1)
CXXFLAGS += -g -O0 #	Debug flag -> -g O0 -> Optimisation level = 0
# += -> add these new properties additional to the previous description of CXXFLAGS variable
else
CXXFLAGS += -O3	# -O3 -> Optimisation level = 3, code is not debugged and optimised to highest possible degree
endif


COMPILER_CALL = $(CXX) $(CXXFLAGS) #	Variable of higher rank because it includes more than one variable

build:
	$(COMPILER_CALL) main.cc -c
	$(COMPILER_CALL) my_lib.cc -c
	$(COMPILER_CALL) main.o my_lib.o -o $(EXECUTABLE_NAME) #create from the main.o data an executable named as main

execute:
	./$(EXECUTABLE_NAME) #execute main executable

clean:
	rm -f *.o	#	Clean everything with an ending .object
	rm -f $(EXECUTABLE_NAME) #	Clean the main executable
