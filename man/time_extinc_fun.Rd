% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_extinc_fun.R
\name{time_extinc_fun}
\alias{time_extinc_fun}
\title{Time to Functional Extinction}
\usage{
time_extinc_fun(n_t, p_d, n_e, t, t_max)
}
\arguments{
\item{n_t}{Population size (# individuals).}

\item{p_d}{Annual percent change in population size (if declining should be negative).}

\item{n_e}{Population size at functional extinction.}

\item{t}{Time (years).}

\item{t_max}{Maximum time (years) to project out to.}
}
\value{
Time to functional extinction.
}
\description{
Estimates time to functional extinction based on initial pop size and annual percent change.
}
