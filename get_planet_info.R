#' Get Basic Information about a Planet
#'
#' This function returns simple data about planets in our solar system.
#'
#' @param planet_name The name of the planet.
#'
#' @return A data frame with basic information about the planet.
#'
#' @examples
#' get_planet_info("Mars")
#'
#' @export
get_planet_info <- function(planet_name) {
  planets <- data.frame(
    Name = c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"),
    Moons = c(0, 0, 1, 2, 79, 82, 27, 14),
    Orbit_Days = c(88, 224.7, 365.2, 687, 4333, 10759, 30660, 60225)
  )
  info <- subset(planets, Name == planet_name)
  return(info)
}
