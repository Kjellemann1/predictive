#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector cpp_bootstrap(int B, NumericVector x, double quantile = -1, bool replacement = true) {
    NumericVector boot(B);
    int n = x.size();
    if (quantile == -1) {
        for (int i = 0; i < B; ++i) {
            NumericVector sample = Rcpp::sample(x, n, replacement);
            boot(i) = mean(sample);
        }
    } else {
        for (int i = 0; i < B; ++i) {
            NumericVector sample = Rcpp::sample(x, n, replacement);
            std::sort(sample.begin(), sample.end());
            int index = static_cast<int>(std::floor(quantile * n));
            boot(i) = sample(index);
        }
    }
    return boot;
}
