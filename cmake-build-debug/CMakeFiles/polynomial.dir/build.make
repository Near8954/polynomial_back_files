# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\jetbrains_tools\CLion\bin\cmake\win\x64\bin\cmake.exe

# The command to remove a file.
RM = D:\jetbrains_tools\CLion\bin\cmake\win\x64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\romab\polynomial_back_files

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\romab\polynomial_back_files\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/polynomial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/polynomial.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/polynomial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/polynomial.dir/flags.make

CMakeFiles/polynomial.dir/main.cpp.obj: CMakeFiles/polynomial.dir/flags.make
CMakeFiles/polynomial.dir/main.cpp.obj: C:/Users/romab/polynomial_back_files/main.cpp
CMakeFiles/polynomial.dir/main.cpp.obj: CMakeFiles/polynomial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/polynomial.dir/main.cpp.obj"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/polynomial.dir/main.cpp.obj -MF CMakeFiles\polynomial.dir\main.cpp.obj.d -o CMakeFiles\polynomial.dir\main.cpp.obj -c C:\Users\romab\polynomial_back_files\main.cpp

CMakeFiles/polynomial.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/polynomial.dir/main.cpp.i"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\romab\polynomial_back_files\main.cpp > CMakeFiles\polynomial.dir\main.cpp.i

CMakeFiles/polynomial.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/polynomial.dir/main.cpp.s"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\romab\polynomial_back_files\main.cpp -o CMakeFiles\polynomial.dir\main.cpp.s

CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj: CMakeFiles/polynomial.dir/flags.make
CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj: C:/Users/romab/polynomial_back_files/src/polynomial/polynomial.cpp
CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj: CMakeFiles/polynomial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj -MF CMakeFiles\polynomial.dir\src\polynomial\polynomial.cpp.obj.d -o CMakeFiles\polynomial.dir\src\polynomial\polynomial.cpp.obj -c C:\Users\romab\polynomial_back_files\src\polynomial\polynomial.cpp

CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.i"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\romab\polynomial_back_files\src\polynomial\polynomial.cpp > CMakeFiles\polynomial.dir\src\polynomial\polynomial.cpp.i

CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.s"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\romab\polynomial_back_files\src\polynomial\polynomial.cpp -o CMakeFiles\polynomial.dir\src\polynomial\polynomial.cpp.s

CMakeFiles/polynomial.dir/src/node/node.cpp.obj: CMakeFiles/polynomial.dir/flags.make
CMakeFiles/polynomial.dir/src/node/node.cpp.obj: C:/Users/romab/polynomial_back_files/src/node/node.cpp
CMakeFiles/polynomial.dir/src/node/node.cpp.obj: CMakeFiles/polynomial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/polynomial.dir/src/node/node.cpp.obj"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/polynomial.dir/src/node/node.cpp.obj -MF CMakeFiles\polynomial.dir\src\node\node.cpp.obj.d -o CMakeFiles\polynomial.dir\src\node\node.cpp.obj -c C:\Users\romab\polynomial_back_files\src\node\node.cpp

CMakeFiles/polynomial.dir/src/node/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/polynomial.dir/src/node/node.cpp.i"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\romab\polynomial_back_files\src\node\node.cpp > CMakeFiles\polynomial.dir\src\node\node.cpp.i

CMakeFiles/polynomial.dir/src/node/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/polynomial.dir/src/node/node.cpp.s"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\romab\polynomial_back_files\src\node\node.cpp -o CMakeFiles\polynomial.dir\src\node\node.cpp.s

CMakeFiles/polynomial.dir/src/base/base.cpp.obj: CMakeFiles/polynomial.dir/flags.make
CMakeFiles/polynomial.dir/src/base/base.cpp.obj: C:/Users/romab/polynomial_back_files/src/base/base.cpp
CMakeFiles/polynomial.dir/src/base/base.cpp.obj: CMakeFiles/polynomial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/polynomial.dir/src/base/base.cpp.obj"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/polynomial.dir/src/base/base.cpp.obj -MF CMakeFiles\polynomial.dir\src\base\base.cpp.obj.d -o CMakeFiles\polynomial.dir\src\base\base.cpp.obj -c C:\Users\romab\polynomial_back_files\src\base\base.cpp

CMakeFiles/polynomial.dir/src/base/base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/polynomial.dir/src/base/base.cpp.i"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\romab\polynomial_back_files\src\base\base.cpp > CMakeFiles\polynomial.dir\src\base\base.cpp.i

CMakeFiles/polynomial.dir/src/base/base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/polynomial.dir/src/base/base.cpp.s"
	D:\jetbrains_tools\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\romab\polynomial_back_files\src\base\base.cpp -o CMakeFiles\polynomial.dir\src\base\base.cpp.s

# Object files for target polynomial
polynomial_OBJECTS = \
"CMakeFiles/polynomial.dir/main.cpp.obj" \
"CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj" \
"CMakeFiles/polynomial.dir/src/node/node.cpp.obj" \
"CMakeFiles/polynomial.dir/src/base/base.cpp.obj"

# External object files for target polynomial
polynomial_EXTERNAL_OBJECTS =

polynomial.exe: CMakeFiles/polynomial.dir/main.cpp.obj
polynomial.exe: CMakeFiles/polynomial.dir/src/polynomial/polynomial.cpp.obj
polynomial.exe: CMakeFiles/polynomial.dir/src/node/node.cpp.obj
polynomial.exe: CMakeFiles/polynomial.dir/src/base/base.cpp.obj
polynomial.exe: CMakeFiles/polynomial.dir/build.make
polynomial.exe: CMakeFiles/polynomial.dir/linkLibs.rsp
polynomial.exe: CMakeFiles/polynomial.dir/objects1.rsp
polynomial.exe: CMakeFiles/polynomial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable polynomial.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\polynomial.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/polynomial.dir/build: polynomial.exe
.PHONY : CMakeFiles/polynomial.dir/build

CMakeFiles/polynomial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\polynomial.dir\cmake_clean.cmake
.PHONY : CMakeFiles/polynomial.dir/clean

CMakeFiles/polynomial.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\romab\polynomial_back_files C:\Users\romab\polynomial_back_files C:\Users\romab\polynomial_back_files\cmake-build-debug C:\Users\romab\polynomial_back_files\cmake-build-debug C:\Users\romab\polynomial_back_files\cmake-build-debug\CMakeFiles\polynomial.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/polynomial.dir/depend

