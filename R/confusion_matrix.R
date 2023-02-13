#' confusion_matrix
#'
#' @description Simplifies making a confusion matrix
#'
#' @param test_y column from test dataframe you are trying to predict
#' @param predictions vector containing predictions
#' @param margin (default : 1) parameter in the prop.table() function from base R
#'
#' @return Returns a table in the form of a confusion matrix
#'
#' @examples
#' Predicting default in the Default dataset from the ISLR2 package
#'
#' regression <- glm(default ~ income + balance, data = train, family = 'binomial')
#' predictions <- predict(regression, newdata = test, type = 'response') > 0.5)
#' confusion_matrix(test$default, predictions)
#'
#' @export
#' @name confusion_matrix
confusion_matrix <- function(test_y, predictions, margin = 1) {
	return(base::prop.table(base::table(test_y, predictions), margin = margin))
}
