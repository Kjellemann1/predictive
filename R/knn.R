#' knn function
#' 
#' @param x0 observation you are trying to predict
#' @param x observations used to predict
#' @param y prediction values corresponding to observations in x
#' @param k the k nearest neighbours to consider
#' 
#' @return the predicted value corresponding to x0
#' 
#' @examples
#' predicting horsepower based on miles per gallon in the ISLR2::Auto dataset
#' 
#' prediction <- knn(20, Auto$mpg, Auto$horsepower, 3)
#' 
#' @export
knn <- function(x0, x, y, k) {
	return(base::mean(y[base::order(base::abs(x0-x))[1:k]]))
}
