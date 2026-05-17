# CMake C++ Template

Generic CMake C++ project layout with:

- a static library target
- an executable target
- Catch2 tests
- CPM dependency setup in `cmake/Dependencies.cmake`

Customize the template once:

```sh
./customize <libname> <appname>
```

Then configure and test:

```sh
cmake -S . -B build
cmake --build build
ctest --test-dir build
```
