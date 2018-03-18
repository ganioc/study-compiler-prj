cmake_minimum_required(VERSION 2.8.9)

PROJECT(interpreter)

# add c source files to a variable
AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/src TOPSRCS)

SET(SRCS main.c ${TOPSRCS})

#SET( CMAKE_VERBOSE_MAKEFILE on )

message(STATUS "directory is: ${CMAKE_CURRENT_SOURCE_DIR}")

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(interpreter ${SRCS})





