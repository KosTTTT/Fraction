cmake_minimum_required (VERSION 2.6)
project (FractionTests)
set(CMAKE_CXX_STANDARD 17)#the minimum requred version of C++
set(CMAKE_CXX_STANDARD_REQUIRED ON)#otherwise the error occures


set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Build type")
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
                "Debug" "Release" "RelWithDebInfo" "MinSizeRel" "")
if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wa,-mbig-obj")
endif()

#the name of a folder for build files
set (build_dir_postfix1 ${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE}${CMAKE_SYSTEM_NAME}${CMAKE_CXX_COMPILER_ID}${CMAKE_SYSTEM_PROCESSOR})

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${build_dir_postfix1}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${build_dir_postfix1}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${build_dir_postfix1}/lib)

add_subdirectory(Fraction)

add_executable (t_Fraction
t_fraction.cpp
)

target_link_libraries(t_Fraction
Fraction
)

add_custom_target(Tests
DEPENDS t_Fraction
COMMAND ${CMAKE_COMMAND} -D var1=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/t_Fraction -P ${CMAKE_CURRENT_SOURCE_DIR}/testsScript.cmake
)
