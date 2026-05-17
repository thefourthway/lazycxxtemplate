project(__APP_NAME__ VERSION 1.0 LANGUAGES CXX)

set(__APP_CMAKE_PREFIX___INC)
set(__APP_CMAKE_PREFIX___SRC src/main.cpp)

add_executable(__APP_NAME__
    ${__APP_CMAKE_PREFIX___INC}
    ${__APP_CMAKE_PREFIX___SRC}
)

target_include_directories(__APP_NAME__
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(__APP_NAME__
    PRIVATE
        __LIB_NAME__
)
