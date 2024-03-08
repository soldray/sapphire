cmake_minimum_required(VERSION 3.28)
project(cp CXX)

add_executable(main main.cpp )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

target_compile_options(main PRIVATE -Wall -O3)
target_compile_features(main PRIVATE cxx_std_20)
target_precompile_headers(main PRIVATE include/bits/stdc++.h)
target_include_directories(main PRIVATE include)
target_include_directories(main PRIVATE .)

add_custom_target(run
  echo "$(xclip -o) " && xclip -o | ./main
  )

add_custom_target(c
  cat main.cpp | xclip -i
  )
