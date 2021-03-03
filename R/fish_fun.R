## Function that takes a vector of fish names and always returns three items
# common = most common fish
# rare = rarest fish
# total = total number of fish
# input data should be a factor

#  include an option (defaulted to FALSE) that if TRUE also returns a histogram of the number of each fish type, with a title giving the total number of fish caught.  Remember that you can save a graph as a variable.

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
