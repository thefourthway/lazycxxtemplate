cmake_minimum_required(VERSION 3.30)

project(__APP_NAME__ VERSION 1.0 LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(POLICY CMP0135)
    cmake_policy(SET CMP0135 NEW)
endif()

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if(NOT DEFINED CMAKE_BUILD_PARALLEL_LEVEL)
    set(CMAKE_BUILD_PARALLEL_LEVEL 2)
endif()

include(FetchContent)
include(cmake/Dependencies.cmake)

add_subdirectory(__LIB_NAME__)
add_subdirectory(__APP_NAME__)
add_subdirectory(tests)
