#Specify the cmake version being used
cmake_minimum_required(VERSION 2.6)

find_package(PkgConfig REQUIRED)

#Name of the project
project(sdf-test)

PKG_SEARCH_MODULE(SDL2 REQUIRED sdl2)
INCLUDE_DIRECTORIES(${SDL2_INCLUDE_DIRS})

#
#   Source code
#

#All the directories containing header files
include_directories(
"${PROJECT_SOURCE_DIR}/src/"
)

set(SOURCE_FILES
src/main.cpp
src/window.cpp
src/render.cpp
src/sdfshape.cpp
)

#Add a location for a search path for headers
include_directories("${PROJECT_BINARY_DIR}")

#
#   Compilation options
#

#Tell the compiler to include -std=c++11
add_definitions(-g -std=c++11 -Wall)

#
#   Compilation
#

#Take the code and turn it into the executable
add_executable(sdf-test ${SOURCE_FILES})

#Link the final executable to the needed libraries
target_link_libraries(sdf-test ${SDL2_LIBRARIES})
