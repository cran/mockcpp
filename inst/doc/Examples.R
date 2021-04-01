## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- setup-------------------------------------------------------------------
print_code <- function(filename) {
  cat(readChar(filename, file.info(filename)$size))
}

## -----------------------------------------------------------------------------
print_code(
  system.file('testrcpp/src/code.h', package = 'mockcpp', mustWork = TRUE)
)

## -----------------------------------------------------------------------------
print_code(
  system.file('testrcpp/src/test-example.cpp', package = 'mockcpp', mustWork = TRUE)
)

## -----------------------------------------------------------------------------
# load test package
pkgload::load_all(
  system.file('testrcpp', package = 'mockcpp', mustWork = TRUE)
)

# run the test
testthat::test_file(
  system.file(
    'testrcpp/tests/testthat/test-cpp.R',
    package = 'mockcpp',
    mustWork = TRUE
  )
)

## -----------------------------------------------------------------------------
print_code(
  system.file('testcpp11/src/code.h', package = 'mockcpp', mustWork = TRUE)
)

## -----------------------------------------------------------------------------
print_code(
  system.file('testcpp11/src/test-example.cpp', package = 'mockcpp', mustWork = TRUE)
)

## -----------------------------------------------------------------------------
# load test package
pkgload::load_all(
  system.file('testcpp11', package = 'mockcpp', mustWork = TRUE)
)

# run the test
testthat::test_file(
  system.file(
    'testcpp11/tests/testthat/test-cpp.R',
    package = 'mockcpp',
    mustWork = TRUE
  )
)

