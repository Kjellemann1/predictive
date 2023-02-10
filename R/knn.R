knn <- function(x0, x, y, k) {
	return(stats::mean(y[base::order(base::abs(x0-x))[1:k]]))
}
