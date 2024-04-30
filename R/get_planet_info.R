#' Get Information about a Planet
#'
#' Retrieves detailed data about a planet from the dataset including its name,
#' distance from the Sun, and diameter.
#'
#' @param planet_name The name of the planet to retrieve information for.
#'
#' @return A data frame row containing the planet's details.
#'
#' @examples
#' get_planet_info("Mars")
#'
#' @export
get_planet_info <- function(planet_name) {
  # Ensure the planet data is available
  if(!exists("planets")) {
    stop("The dataset 'planets' does not exist in the environment.")
  }

  # Check if the planet name is in the dataset
  planet_data <- subset(planets, Name == planet_name)
  if(nrow(planet_data) == 0) {
    stop("Planet name not found in the dataset.")
  }

  return(planet_data)
}
