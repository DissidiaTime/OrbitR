#' Plot a Simple Circular Orbit
#'
#' This function plots a simple circular orbit to illustrate the the concept of orbits.
#'
#' @param radius The radius of the orbit.
#'
#' @examples
#' plot_orbit_simple(1)
#'
#' @export
plot_orbit_simple <- function(radius) {
  theta <- seq(0, 2*pi, length.out = 100)
  x <- radius * cos(theta)
  y <- radius * sin(theta)

  plot(x, y, type = 'l', xlab = "X", ylab = "Y",
       main = "Simple Circular Orbit")
}
