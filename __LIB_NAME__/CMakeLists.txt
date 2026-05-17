project(__LIB_NAME__ VERSION 1.0 LANGUAGES CXX)

set(
    __LIB_CMAKE_PREFIX___INC
    include/__LIB_NAME__/anchor.hpp
)

set(
    __LIB_CMAKE_PREFIX___SRC
    src/anchor.cpp
)

add_library(__LIB_NAME__ STATIC
    ${__LIB_CMAKE_PREFIX___INC}
    ${__LIB_CMAKE_PREFIX___SRC}
)

target_include_directories(__LIB_NAME__
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_compile_features(__LIB_NAME__
    PUBLIC
        cxx_std_23
)

# Link dependencies that are part of the public library API as PUBLIC.
# Link implementation-only dependencies as PRIVATE.
