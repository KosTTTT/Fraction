# Fraction
A C++ Fraction class for lossless addition, subtraction mainly. But multiplication and division are also supported.
To include into your Cmake project you might add 
include_directories(Fraction)
add_subdirectory(Fraction/Fraction)
into CMakeFile
and link with Fraction library.
There are unit tests that can be build in a separate directory and run with building a target Tests.
