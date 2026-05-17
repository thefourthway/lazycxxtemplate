set(TESTS_INCLUDE)

set(
    TESTS_SRC
    src/test_anchor.cpp
)

add_executable(tests ${TESTS_SRC} ${TESTS_INCLUDE})

target_link_libraries(tests
    PRIVATE
        __LIB_NAME__
        Catch2::Catch2WithMain
)

include(${Catch2_SOURCE_DIR}/extras/Catch.cmake)
catch_discover_tests(tests)
