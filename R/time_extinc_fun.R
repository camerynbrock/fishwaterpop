#' Time to Functional Extinction
#'
#' Estimates time to functional extinction based on initial pop size and annual percent change.
#'
#' @param n_t Population size (# individuals).
#' @param p_d Annual percent change in population size (if declining should be negative).
#' @param t Time (years).
#' @param t_max Maximum time (years) to project out to.
#' @param n_e Population size at functional extinction.
#' @return Time to functional extinction.

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
