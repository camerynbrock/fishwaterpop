#' Fish Species Summary
#'
#' Returns the most common species, the rarest species, and the total number of fish from a factor of fish names. Optional to also return a histogram.
#'
#' @param species Factor of fish names.
#' @param common Most common fish.
#' @param rare Rarest fish.
#' @param total Total number of fish.
#' @param hist Whether to return a histogram with a title of the total number of fish caught. Default is FALSE.
#' @return List of common, rare, and total species. Will also return a histogram if hist = TRUE.

fish_fun <- function(species, common, rare, total, hist = FALSE){
  require(tidyverse)
  common = which.max(summary(species))
  rare = which.min(summary(species))
  total = sum(summary(species))
if(hist == TRUE){
  histogram <- ggplot(data.frame(species),
                      aes(x = species, fill = species)) +
    geom_histogram(stat = "count") +
    theme_minimal() +
    labs(title = sprintf("We mostly caught %s \n max catch(%d)",
                         names(which.max(summary(species))),
                         sum(summary(species))))
  return(list(common = common, rare = rare, total = total, histogram))
  }
else{
  return(list(common = common, rare = rare, total = total))
  }
}
