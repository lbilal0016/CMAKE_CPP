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

DEBUG ?= 1
ENABLE_WARNINGS ?= 1
WARNINGS_AS_ERRORS ?= 0
#	?= only when the user doesn't give any input argument for these variables, then use default flags

ifeq ($(ENABLE_WARNINGS),1)
CXX_WARNINGS = -Wall -Wextra -Wpedantic	#	Show all warnings
else
CXX_WARNINGS =
endif

ifeq ($(WARNINGS_AS_ERRORS),1)
CXX_WARNINGS += -Werror
endif

INCLUDE_DIR = include
SOURCE_DIR = src
BUILD_DIR = build

CXX_STANDARD = c++17

CXX = g++	#	Use g++ as cpp compiler
CXXFLAGS = $(CXX_WARNINGS) -std=$(CXX_STANDARD)
CPPFLAGS = -I $(INCLUDE_DIR)
LDFLAGS =

ifeq ($(DEBUG), 1)
CXXFLAGS += -g -O0 #	Debug flag -> -g O0 -> Optimisation level = 0
# += -> add these new properties additional to the previous description of CXXFLAGS variable
EXECUTABLE_NAME = mainDebug
else
CXXFLAGS += -O3	# -O3 -> Optimisation level = 3, code is not debugged and optimised to highest possible degree
EXECUTABLE_NAME = mainRelease
endif


COMPILER_CALL = $(CXX) $(CXXFLAGS) $(CPPFLAGS)
#	Variable of higher rank because it includes more than one variable

CXX_SOURCES = $(wildcard $(SOURCE_DIR)/*.cc)
CXX_OBJECTS = $(patsubst $(SOURCE_DIR)/%.cc, $(BUILD_DIR)/%.o, $(CXX_SOURCES))
#$(SOURCE_DIR)/*.cc -> search for .cc ending files in source directory
#$(BUILD_DIR)/*.o -> create .o files in build directory
# $(patsubstitution "searched files", "substitution", $(WHERE_TO_LOOK))
#CXX_OBJECTS = my_lib.o main.o


######################################
########	CREATE BUILD Folder	######
######################################
all: create build
# all: target is the main target of the Makefile, it only has dependencies.


create:
	@mkdir -p build
#	If used at the beginning of a command, @ prevents that the command itself is printed on the terminal

#	Each command is executed independent from the previous one, meaning that if the directory is changed
# 	in the previous command, the next command will not be affected from this directory change. In order to make
# 	them dependent each other, commands must be written on the same line, and combined with "&&" operator.

build: create $(CXX_OBJECTS)
	@echo $(CXX_SOURCES)	# echo ---> print
	$(COMPILER_CALL) $(CXX_OBJECTS) -o $(BUILD_DIR)/$(EXECUTABLE_NAME)
#create from the main.o data an executable named as main
# $(BUILD_DIR)/$(EXECUTABLE_NAME) -> generate the executable also in BUILD_DIR
#	build : >>DEPENDENCIES HERE<<

execute:
	@./$(BUILD_DIR)/$(EXECUTABLE_NAME)
#execute main executable

clean:
	@rm -f $(BUILD_DIR)/*.o
	@rm -f $(BUILD_DIR)/$(EXECUTABLE_NAME)
	@echo Cleanup is done!
#	Clean everything with an ending .object
#	Clean the main executable


#######################
##### PATTERNS ########
#######################

#	$@: the file name of the target
#	$<: the name of the first dependency

$(BUILD_DIR)/%.o: $(SOURCE_DIR)/%.cc
	$(COMPILER_CALL) -c $< -o $@
#-> $(COMPILER_CALL) -c %.o -o %.cc

#	With patterns, the following is no longer needed:
#	$(COMPILER_CALL) main.cc -c
#	$(COMPILER_CALL) my_lib.cc -c


####################
##	PHONY	########
.PHONY: all create build execute clean

# Here's what the .PHONY does:
#-----------------------------
# 1.	Prevents conflicts with actual file names: By declaring a target as ".PHONY", you ensure that
# the target's name doesn't conflict with any files in the directory. This is useful to avoid accidental confusion
# between real file targets and special targets.
# 2.	Apart from that, .PHONY forces Make file to consider targets as out-of-date; meaning, regardless of whether
# any file dependencies have been modified.
