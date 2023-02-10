# predictive
Functions used in Predictive Analytics with R <br>

<br>

## knn(x0, x, y, k)
Calculates K nearest neighbours for one variable <br>
- x0 : observation you are trying to predict
- x : observations used to predict
- y : prediction values corresponding to observations in x
- k : the k nearest neighbours to consider

<br>

## bootstrap(B, x, replacement = TRUE)
Returns a vector of length B randomly sampled from x
- B : number of samples
- x : sampling variable
<<<<<<< HEAD
- replacement : (by default TRUE) whether or not to use replacement
=======
- replacement (DEFAULT = TRUE) : with or without replacement
>>>>>>> 904ff978abd134b868b2c40d7eccbcf4b79e6070
