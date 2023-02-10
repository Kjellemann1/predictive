knn <- function(x0, x, y, k) {
	return(mean(y[order(abs(x0-x))[1:k]]))
}
