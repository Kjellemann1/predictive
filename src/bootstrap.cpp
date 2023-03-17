#include <Rcpp.h>

// [[Rcpp::export]]
Rcpp::NumericVector bootstrap(int B, Rcpp::NumericVector x, double quantile = -1, bool replacement = true) {
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
