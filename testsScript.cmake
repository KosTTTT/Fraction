set(tret 1)
#fraction test
message(STATUS "Running testsScript.cmake")
execute_process(COMMAND ${CMAKE_CURRENT_BINARY_DIR}/${var1}
RESULT_VARIABLE tret
)
if(tret)
    message(FATAL_ERROR "${var1} test failed.")
endif()
