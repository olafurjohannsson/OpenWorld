cmake_minimum_required(VERSION 3.9.0)

add_library(
        fmt
        fmt/include/fmt/core.h
        fmt/include/fmt/format-inl.h
        fmt/include/fmt/format.h
        fmt/include/fmt/ostream.h
        fmt/include/fmt/posix.h
        fmt/include/fmt/printf.h
        fmt/include/fmt/ranges.h
        fmt/include/fmt/time.h
        fmt/src/format.cc
        fmt/src/posix.cc
)
