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
#' @export
#' @import stats
#' @name bootstrap
bootstrap <- function(B, x, quantile = -1, replacement = TRUE) {
	boot <- rep(0, B)
	if (quantile == -1) {
		for (i in 1:B) {boot[i] <- base::mean(x[base::sample(1:base::NROW(x), replace = replacement)])}
	} else {
		for (i in 1:B) {boot[i] <- stats::quantile(x[base::sample(1:base::NROW(x), replace = replacement)], quantile)}
	}
	return(boot)
}

