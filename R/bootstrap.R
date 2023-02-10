bootstrap <- function(B, x) {
	boot <- rep(0, B)
	for (i in 1:B) {boot[i] <- mean(x[sample(1:NROW(x), replace = TRUE)])}
	return(boot)
}
