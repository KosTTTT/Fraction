cmake_minimum_required (VERSION 2.6)
project (Fraction)
set(CMAKE_CXX_STANDARD 17)#the minimum requred version of C++
set(CMAKE_CXX_STANDARD_REQUIRED ON)#otherwise the error occures


set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Build type")
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
                "Debug" "Release" "RelWithDebInfo" "MinSizeRel" "")
if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wa,-mbig-obj")
endif()

add_executable (t_Fraction
Fraction.hpp
Fraction.cpp
t_fraction.cpp
)
add_custom_target(Tests
DEPENDS t_Fraction
COMMAND ${CMAKE_COMMAND} -D var1=t_Fraction -P ${CMAKE_CURRENT_SOURCE_DIR}/testsScript.cmake
)
