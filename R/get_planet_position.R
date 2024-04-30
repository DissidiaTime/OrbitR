#' Calculate Theoretical Position of a Planet in Its Orbit
#'
#' This function calculates a simplified theoretical position of a planet based on its
#' distance from the Sun assuming a circular orbit. This is purely illustrative and assumes
#' the planet is at the '0 degrees' point at the time of calling.
#'
#' @param planet_name The name of the planet.
#'
#' @return The x, y coordinates in the orbital plane.
#'
#' @examples
#' get_planet_position("Earth")
#'
#' @export
get_planet_position <- function(planet_name) {
  # Get thes planet information
  planet_info <- get_planet_info(planet_name)
  
  # For a simplified model, calculate position at one point in time
  # Assuming the planet is at "0 degrees" in its orbit, directly at the x-axis distance
  x_position <- planet_info$DistanceFromSun
  y_position <- 0  # Since we assume it's at 0 degrees, the y position is 0
  
  # Return as a named list
  return(list(x = x_position, y = y_position))
}

