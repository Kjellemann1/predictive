\name{bootstrap}
\alias{bootstrap}
\docType{package}
\title{
bootstrap
}
\description{
Resampling using the bootstrap method
}
\usage{
bootstrap(B, x, quantile = -1, replacement = TRUE)	
}
\arguments{
\item{B}{number of samples}

\item{x}{sampling variable}

\item{quantile}{(default: -1) if -1 returns the mean, else returns the quantile specified}

\item{replacement}{(default: TRUE) whether or not to use replacement}
}
\value{
sampling distribution
}
\examples{
estimating population distribution of mpg using the Auto dataset from the ISLR2 package

sampling_distribution <- bootstrap(1000, Auto$mpg)


estimating the 99th percentile of the population distribution of mpg
using the Auto dataset from the ISLR2 package

sampling_distribution_99th <- bootstrap(1000, Auto$mpg, 0.99)

}

