#' split_train_test
#'
#' @description Split dataframe into train and test data
#'
#' @param df dataframe you want to split
#' @param train_frac the fraction of the data you want in train
#' @param keep_id (default: TRUE) whether or not to keep split_train_test_id column in returned dataframes
#'
#' @return list containing two dataframes: train and test
#'
#' @examples
#' Splitting the dataframe auto, with 80% in train and 20% in test
#'
#' split <- split_train_test(auto, 0.8)
#' train <- split$train
#' test <- split$test
#'
#' @export
#' @import dplyr
#' @name split_train_test
split_train_test <- function(df, train_frac, keep_id = TRUE) {
	df$split_train_test_id = 1:base::NROW(df)
	train <- df %>% dplyr::sample_frac(train_frac)
	test <- dplyr::anti_join(df, train, by = 'split_train_test_id')
	if (keep_id == FALSE) {
		train <- train %>% dplyr::select(-split_train_test_id)
		test <- test %>% dplyr::select(-split_train_test_id)
	}
	return(list(train = train, test = test))
}
