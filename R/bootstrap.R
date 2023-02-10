bootstrap <- function(B, x, replacement = TRUE) {
	boot <- rep(0, B)
	for (i in 1:B) {boot[i] <- base::mean(x[base::sample(1:base::NROW(x), replace = replacement)])}
	return(boot)
}
