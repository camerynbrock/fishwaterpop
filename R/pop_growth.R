#' How does a population grow based on initial conditions, growth rate and time?
#'
#' @param p0 inital/starting population (# of individuals)
#' @param e Euler's number default = 2.71828
#' @param r % of growth rate
#' @param t time (years)
#' @return p total population after time t

growth = function(p0, e=2.71828, r, t) {

  ## error checking
  if (t <=  0) return("Time cannot be less than 0")
  if (r >=  0.99) return("warning: high growth rate")
  p = p0*e**(r*t)
  return(p)
}
