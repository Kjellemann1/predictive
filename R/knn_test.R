#' knn_test
#'
#' @description Calculates predictions for each value in test data using knn()
#'
#' @param test_x0 test data column
#' @param train_x train data column
#' @param train_y train data column with values you are trying to predict
#' @param k k nearest neighbours to consider
#'
#' @examples
#' Using the palmerpenguins dataset
#'
#' predictions <- knn_test(test$flipper_length_mm, train$flipper_length_mm, train$species, 3)
#'
#'@return vector with predictions
#'
#' @export
#' @name knn_test
knn_test <- function(test_x0, train_x, train_y, k) {
	predictions <- base::rep(0, base::NROW(test_x0))
	for (i in 1:base::NROW(test_x0)) {
		predictions[i] <- predictive::knn(test_x0[i], train_x, train_y, k)
	}
	return(predictions)
}
