library(Rcpp)
cppFunction('
Rcpp::NumericVector cpp_bootstrap(int B, Rcpp::NumericVector x, double quantile = -1, bool replacement = true) {
    Rcpp::NumericVector boot(B);
    int n = x.size();
    if (quantile == -1) {
        for (int i = 0; i < B; ++i) {
            Rcpp::NumericVector sample = Rcpp::sample(x, n, replacement);
            boot(i) = Rcpp::mean(sample);
        }
    } else {
        for (int i = 0; i < B; ++i) {
            Rcpp::NumericVector sample = Rcpp::sample(x, n, replacement);
            std::sort(sample.begin(), sample.end());
            int index = static_cast<int>(std::floor(quantile * n));
            boot(i) = sample(index);
        }
    }
    return boot;
}
')
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
#' @name bootstrap
#' @export
bootstrap <- function(B, x, quantile = -1, replacement = TRUE) {
	cpp_bootstrap(B, x, quantile, replacement)
}
