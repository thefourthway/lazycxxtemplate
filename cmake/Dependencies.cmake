include(FetchContent)
include(CTest)

FetchContent_Declare(
    CPM
    GIT_REPOSITORY https://github.com/cpm-cmake/CPM.cmake
    GIT_TAG v0.42.3
)
FetchContent_MakeAvailable(CPM)

CPMAddPackage(
    NAME Catch2
    GITHUB_REPOSITORY catchorg/Catch2
    GIT_TAG v3.14.0
    OPTIONS
        "CATCH_INSTALL_DOCS OFF"
        "CATCH_INSTALL_EXTRAS OFF"
        "CATCH_BUILD_TESTING OFF"
)

# Add project dependencies here with CPMAddPackage(...), find_package(...), or both.
