## function for time to functional extinction
#' @param n_t = population size (# individuals)
#' @param p_d = annual percent change in population size (if declining should be negative)
#' @param t = time (years)
#' @param t_max = max time (years) to project out to
#' @param n_e = population size at functional extinction
#' @return t to functional extinction


time_extinc_fun <- function(n_t, p_d, n_e, t, t_max){
  n_t = ifelse((n_t < 0),
               return("Initial population size must be greater than zero"),
               n_t)
  while((n_t >= n_e) & (t <= t_max)) {
    n_t = n_t + n_t * p_d
    t = t + 1
  }
  return(t)
}
