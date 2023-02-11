#' bootstrap
#'
#' @description Resampling using the bootstrap method
#'
#' @param B number of samples
#' @param x sampling variable
#' @param replacement (default: TRUE) whether or not to use replacement
#'
#' @return sampling distribution
#'
#' @examples
#' estimating population distribution of mpg using the Auto dataset from the ISLR2 package
#'
#' sampling_distribution <- bootstrap(1000, Auto$mpg)
#'
#' @export
#' @name bootstrap
bootstrap <- function(B, x, replacement = TRUE) {
	boot <- rep(0, B)
	for (i in 1:B) {boot[i] <- base::mean(x[base::sample(1:base::NROW(x), replace = replacement)])}
	return(boot)
}
