install.packages("testthat")
library(testthat)

library(OrbitR)

# Run tests for each function

# Testing get_planet_info

test_that("get_planet_info returns correct planet data and handles errors", {
  data(planets)
  earth_info <- get_planet_info("Earth")
  expect_equal(nrow(earth_info), 1)
  expect_equal(earth_info$Name, "Earth")
  expect_equal(earth_info$DistanceFromSun, 149.6)
  
  expect_error(get_planet_info("Pluto"), "Planet name not found in the dataset.")
})

# Testing plot_orbit_simple

test_that("plot_orbit_simple executes without error", {
  expect_silent(plot_orbit_simple("Earth"))
})

#Testing get_planet position

test_that("get_planet_position calculates correct positions", {
  data(planets)
  position <- get_planet_position("Earth")
  expect_is(position, "list")
  expect_equal(length(position), 2)
  expect_equal(names(position), c("x", "y"))
})

#Testing simulate_orbit_adjustment

test_that("simulate_orbit_adjustments returns expected results", {
  data(planets)
  adjusted_orbit <- simulate_orbit_adjustments(planets, "Earth", 1.1)
  expected_distance <- planets[planets$Name == "Earth", "DistanceFromSun"] * 1.1^2
  expect_equal(adjusted_orbit$AdjustedDistance, expected_distance)
})


## ALL TESTS PASSED
