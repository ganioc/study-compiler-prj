# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build

# Include any dependencies generated for this target.
include CMakeFiles/interpreter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/interpreter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/interpreter.dir/flags.make

CMakeFiles/interpreter.dir/main.c.o: CMakeFiles/interpreter.dir/flags.make
CMakeFiles/interpreter.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/interpreter.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/interpreter.dir/main.c.o   -c /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/main.c

CMakeFiles/interpreter.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/interpreter.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/main.c > CMakeFiles/interpreter.dir/main.c.i

CMakeFiles/interpreter.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/interpreter.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/main.c -o CMakeFiles/interpreter.dir/main.c.s

CMakeFiles/interpreter.dir/main.c.o.requires:

.PHONY : CMakeFiles/interpreter.dir/main.c.o.requires

CMakeFiles/interpreter.dir/main.c.o.provides: CMakeFiles/interpreter.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/interpreter.dir/build.make CMakeFiles/interpreter.dir/main.c.o.provides.build
.PHONY : CMakeFiles/interpreter.dir/main.c.o.provides

CMakeFiles/interpreter.dir/main.c.o.provides.build: CMakeFiles/interpreter.dir/main.c.o


CMakeFiles/interpreter.dir/src/init.c.o: CMakeFiles/interpreter.dir/flags.make
CMakeFiles/interpreter.dir/src/init.c.o: ../src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/interpreter.dir/src/init.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/interpreter.dir/src/init.c.o   -c /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/init.c

CMakeFiles/interpreter.dir/src/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/interpreter.dir/src/init.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/init.c > CMakeFiles/interpreter.dir/src/init.c.i

CMakeFiles/interpreter.dir/src/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/interpreter.dir/src/init.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/init.c -o CMakeFiles/interpreter.dir/src/init.c.s

CMakeFiles/interpreter.dir/src/init.c.o.requires:

.PHONY : CMakeFiles/interpreter.dir/src/init.c.o.requires

CMakeFiles/interpreter.dir/src/init.c.o.provides: CMakeFiles/interpreter.dir/src/init.c.o.requires
	$(MAKE) -f CMakeFiles/interpreter.dir/build.make CMakeFiles/interpreter.dir/src/init.c.o.provides.build
.PHONY : CMakeFiles/interpreter.dir/src/init.c.o.provides

CMakeFiles/interpreter.dir/src/init.c.o.provides.build: CMakeFiles/interpreter.dir/src/init.c.o


CMakeFiles/interpreter.dir/src/lexer.c.o: CMakeFiles/interpreter.dir/flags.make
CMakeFiles/interpreter.dir/src/lexer.c.o: ../src/lexer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/interpreter.dir/src/lexer.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/interpreter.dir/src/lexer.c.o   -c /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/lexer.c

CMakeFiles/interpreter.dir/src/lexer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/interpreter.dir/src/lexer.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/lexer.c > CMakeFiles/interpreter.dir/src/lexer.c.i

CMakeFiles/interpreter.dir/src/lexer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/interpreter.dir/src/lexer.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/src/lexer.c -o CMakeFiles/interpreter.dir/src/lexer.c.s

CMakeFiles/interpreter.dir/src/lexer.c.o.requires:

.PHONY : CMakeFiles/interpreter.dir/src/lexer.c.o.requires

CMakeFiles/interpreter.dir/src/lexer.c.o.provides: CMakeFiles/interpreter.dir/src/lexer.c.o.requires
	$(MAKE) -f CMakeFiles/interpreter.dir/build.make CMakeFiles/interpreter.dir/src/lexer.c.o.provides.build
.PHONY : CMakeFiles/interpreter.dir/src/lexer.c.o.provides

CMakeFiles/interpreter.dir/src/lexer.c.o.provides.build: CMakeFiles/interpreter.dir/src/lexer.c.o


# Object files for target interpreter
interpreter_OBJECTS = \
"CMakeFiles/interpreter.dir/main.c.o" \
"CMakeFiles/interpreter.dir/src/init.c.o" \
"CMakeFiles/interpreter.dir/src/lexer.c.o"

# External object files for target interpreter
interpreter_EXTERNAL_OBJECTS =

interpreter: CMakeFiles/interpreter.dir/main.c.o
interpreter: CMakeFiles/interpreter.dir/src/init.c.o
interpreter: CMakeFiles/interpreter.dir/src/lexer.c.o
interpreter: CMakeFiles/interpreter.dir/build.make
interpreter: CMakeFiles/interpreter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable interpreter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/interpreter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/interpreter.dir/build: interpreter

.PHONY : CMakeFiles/interpreter.dir/build

CMakeFiles/interpreter.dir/requires: CMakeFiles/interpreter.dir/main.c.o.requires
CMakeFiles/interpreter.dir/requires: CMakeFiles/interpreter.dir/src/init.c.o.requires
CMakeFiles/interpreter.dir/requires: CMakeFiles/interpreter.dir/src/lexer.c.o.requires

.PHONY : CMakeFiles/interpreter.dir/requires

CMakeFiles/interpreter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/interpreter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/interpreter.dir/clean

CMakeFiles/interpreter.dir/depend:
	cd /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build /Users/junyang/Documents/yangjun/project/compiler/2.9.8-interpreter/build/CMakeFiles/interpreter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/interpreter.dir/depend

