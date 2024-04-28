#' Calculate Planet Position Using Kepler's Laws
#'
#' This function calculates the position of a planet based on Kepler's laws of planetary motion.
#'
#' @param semi_major_axis Semi-major axis of the planet's orbit in astronomical units.
#'
#' @param eccentricity Eccentricity of the orbit.
#'
#' @param anomaly Mean anomaly at a specific time in degrees.
#'
#' @return A list with x and y coordinates of the planet in its orbital plane.
#'
#' @examples
#' # Example for Earth
#' get_planet_position(1, 0.0167, 0)
#'
#' @export
get_planet_position <- function(semi_major_axis, eccentricity, anomaly) {
  # Convert anomaly from degrees to radians
  M <- anomaly * pi / 180

  # Solve Kepler's equation for eccentricc anomaly
  E <- M
  for (i in 1:10) {  # Iterative solution
    E <- E - (E - eccentricity * sin(E) - M) / (1 - eccentricity * cos(E))
  }

  # Calculate the true anomaly
  theta <- 2 * atan(sqrt((1 + eccentricity) / (1 - eccentricity)) * tan(E / 2))

  # Calculate the distance from the Sun
  r <- semi_major_axis * (1 - eccentricity * cos(E))

  # Convert polar coordinates to Cartesian coordinates
  x <- r * cos(theta)
  y <- r * sin(theta)

  return(list(x = x, y = y))
}
