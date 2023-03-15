#' bootstrap
#'
#' @description Resampling using the bootstrap method
#'
#' @param B number of samples
#' @param x sampling variable
#' @param quantile (default: -1) if -1 returns the mean, else returns the quantile specified
#' @param replacement (default: TRUE) whether or not to use replacement
#'
#' @return sampling distribution
#'
#' @examples
#' estimating population distribution of mpg using the Auto dataset from the ISLR2 package
#'
#' sampling_distribution <- bootstrap(1000, Auto$mpg)
#'
#'
#' estimating the 99th percentile of the population distribution of mpg
#' using the Auto dataset from the ISLR2 package
#'
#' sampling_distribution_99th <- bootstrap(1000, Auto$mpg, 0.99)
#'
#' @import Rcpp
#' @useDynLib predictive
#' @name bootstrap
#' @export
bootstrap <- function(B, x, quantile = -1, replacement = TRUE) {
	.Call('Rcpp_bootstrap', B, x, quantile, replacement)
}

