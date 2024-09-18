project(Fraction CXX)
set(CMAKE_CXX_STANDARD 17)#the minimum requred version of C++
set(sources
Fraction.cpp
)
set(headers
Fraction.hpp
)

add_library(${PROJECT_NAME} SHARED
${headers}
${sources}
)
