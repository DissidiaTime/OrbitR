library(testthat)
library(OrbitR)

test_that("Planet position calculation is correct", {
  result <- get_planet_position(1, 0, 0)
  expect_equal(result$x, 1)
  expect_equal(result$y, 0)
})
