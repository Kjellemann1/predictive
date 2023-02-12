#' logreg_confusion_matrix
#'
#' @description Returns a confusion matrix from a logistic regression
#'
#' @param log_reg the regression
#' @param test the test dataframe
#' @param var the variable you are trying to predict
#' @param prob (default: 0.5) probabilites ABOVE this are predicted TRUE (x > prob => TRUE)
#' @param type (default: TRUE) parameter in the predict() function from the stats package
#' @param margin (default : 1) parameter in the prop.table() function from base R
#'
#' @return Returns a table in the form of a confusion matrix
#'
#' @examples
#' Predicting default in the Default dataset from the ISLR2 package
#'
#' regression <- glm(default ~ income + balance, data = train, family = 'binomial')
#' logreg_confusion_matrix(regression, test, 'default')
#'
#' @export
#' @import stats
#' @name logreg_confusion_matrix
logreg_confusion_matrix <- function(log_reg, test, var, prob = 0.5, type = 'response', margin = 1) {
	return(base::prop.table(base::table(base::unlist(test[var]), stats::predict(logreg, newdata = test, type = type) > prob), margin = margin))
}
