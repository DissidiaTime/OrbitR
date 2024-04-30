#' Plot a Simple circular Orbit for a Planet
#'
#' Plots a simple circular orbit for a planet using its average distance from the Sun.
#' The function assumes a perfectly circular orbit for visualization purposes.
#'
#' @param planet_name The name of the planet to plot the orbit for.
#'
#' @return A plot showing the orbit of the planet.
#'
#' @examples
#' plot_orbit_simple("Earth")
#'
#' @export
plot_orbit_simple <- function(planet_name) {
  # Get planet information from the dataset
  planet_info <- get_planet_info(planet_name)

  # Plotting
  plot(0, 0, type = "n", xlim = c(-1, 1) * planet_info$DistanceFromSun,
       ylim = c(-1, 1) * planet_info$DistanceFromSun, xlab = "Millions of km", ylab = "Millions of km",
       main = paste("Orbit of", planet_name))
  symbols(0, 0, circles = planet_info$DistanceFromSun, inches = 0.5, add = TRUE, fg = "blue")
  text(planet_info$DistanceFromSun, 0, labels = planet_name, pos = 4)  # Label the planet at its position
}

