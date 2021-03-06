% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/growth.R
\name{growth}
\alias{growth}
\title{Exponential Population Growth}
\usage{
growth(p0, e = 2.71828, r, t)
}
\arguments{
\item{p0}{Inital/starting population (# of individuals).}

\item{e}{Euler's number. Default = 2.71828.}

\item{r}{Percent growth rate.}

\item{t}{Time (years).}
}
\value{
Total population size after time t.
}
\description{
Calculates how a population will grow based on initial conditions, growth rate and time.
}
