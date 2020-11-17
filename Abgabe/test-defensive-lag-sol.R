library(testthat)

test_vector <- as.vector(1:100)

context("lag_function")

test_that("outputs vector of right lenght", {
  
  # check output is a vector
  expect_vector(lag_function(test_vector))
  
  # check output is a vector of same length
  expect_length(lag_function(test_vector),
                length(test_vector))

})

test_that ("works for all types of vecotr entries", {
  
  # check that works for character and numerical vectors
  
  # define a character vector
  test_vector_character <- as.character(test_vector)
  expect_vector(lag_function(test_vector_character))
  
  # define all several sorts of numerical vectors and check
  # double
  test_vector_double <- as.double(test_vector)
  expect_vector(lag_function(test_vector_double))
  
  # numeric
  test_vector_numeric <- as.numeric(test_vector)
  expect_vector(lag_function(test_vector_numeric))
  
  #integer
  test_vector_integer <- as.integer(test_vector)
  expect_vector(lag_function(test_vector_integer))
  
})
