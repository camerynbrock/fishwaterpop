#' Exponential Population Growth
#'
#' Calculates how a population will grow based on initial conditions, growth rate and time.
#'
#' @param p0 Inital/starting population (# of individuals).
#' @param e Euler's number. Default = 2.71828.
#' @param r Percent growth rate.
#' @param t Time (years).
#' @return Total population size after time t.

growth = function(p0, e=2.71828, r, t) {

  ## error checking
  if (t <=  0) return("Time cannot be less than 0")
  if (r >=  0.99) return("warning: high growth rate")
  p = p0*e**(r*t)
  return(p)
}
