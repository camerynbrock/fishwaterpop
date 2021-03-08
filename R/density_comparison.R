#' Density Comparison
#'
#' Compares mean density of samples to density of water.
#'
#' @param d Density of liquid (g/mL).
#' @param density Average density of water (threshold). Default is 1 g/mL.
#' @return Response of whether average density of sample liquid is more, less, or equal to the average density of water.


density_comparison <- function(d, density_threshold = 1){

  #error checking
  if(length(d) < 10)
    return("Too little density values")

  if(any(d <= 0))
    return("Density can't be negative or 0!!!")

  if(any(d > 9999))
    return ("That's too dense!!!")


  #display information to compare mean density of liquids to water

  #compute mean density
  mean_density = mean(d)

  density = case_when (
    mean_density > density_threshold ~ "Mean density is denser than water",
    mean_density < density_threshold ~ "Mean density is less dense than water",
    mean_density == density_threshold ~ "Mean density is equally as dense as water")

  return(sprintf("%f g/mL, %s", mean_density, density))
}
