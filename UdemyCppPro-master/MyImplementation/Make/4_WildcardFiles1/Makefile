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

CXX_SOURCES = $(wildcard *.cc)
CXX_OBJECTS = $(patsubst %.cc, %.o, $(CXX_SOURCES)) # $(patsubstitution "searched files", "substitution", $(WHERE_TO_LOOK))
#CXX_OBJECTS = my_lib.o main.o

build: $(CXX_OBJECTS)
	echo $(CXX_SOURCES)	# echo ---> print
	$(COMPILER_CALL) $(CXX_OBJECTS) -o $(EXECUTABLE_NAME) #create from the main.o data an executable named as main

execute:
	./$(EXECUTABLE_NAME) #execute main executable

clean:
	rm -f *.o	#	Clean everything with an ending .object
	rm -f $(EXECUTABLE_NAME) #	Clean the main executable


#######################
##### PATTERNS ########
#######################

#	$@: the file name of the target
#	$<: the name of the first dependency

%.o: %.cc
	$(COMPILER_CALL) -c $< -o $@
#-> $(COMPILER_CALL) -c %.o -o %.cc

#	With patterns, the following is no longer needed:
#	$(COMPILER_CALL) main.cc -c
#	$(COMPILER_CALL) my_lib.cc -c
