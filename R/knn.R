#' knn
#'
#' @description Predict using k nearest neighbour on one variable
#'
#' @param x0 observation you are trying to predict
#' @param x observations used to predict
#' @param y prediction values corresponding to observations in x
#' @param k k nearest neighbours to consider
#'
#' @return the predicted value corresponding to x0
#'
#' @examples
#' Predicting horsepower based on miles per gallon in the ISLR2::Auto dataset
#'
#' prediction <- knn(20, Auto$mpg, Auto$horsepower, 3)
#'
#' @export
#' @name knn
knn <- function(x0, x, y, k) {
	if (class(y) == 'numeric' || class(y) == 'int') {
		return(base::as.numeric(base::mean(y[base::order(base::abs(x0-x))[1:k]])))
	} else {
		return(base::names(base::sort(base::table(y[base::order(base::abs(x0-x))[1:k]]),decreasing=TRUE)[1]))
	}
}
