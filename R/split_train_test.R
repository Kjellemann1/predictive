#' split_train_test
#'
#' @description Split dataframe into training and test data
#'
#' @param df dataframe you want to split
#' @param train_frac (default: 0.7) the fraction of the data you want in training data
#'
#' @return list containing two dataframes: train and test
#'
#' @examples
#' Splitting the dataframe auto, with 80% in train and 20% in test
#'
#' split <- split_train_test(auto, train_frac = 0.8)
#' train <- split$train
#' test <- split$test
#'
#' @export
#' @name split_train_test
library(dplyr)
split_train_test <- function(df, train_frac = 0.7) {
	df$id = 1:base::NROW(df)
	train <- df %>% dplyr::sample_frac(train_frac)
	test <- dplyr::anti_join(df, train, by = 'id')
	return(list(train = train, test = test))
}
