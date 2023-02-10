# predictive
Functions used in Predictive Analytics with R <br>

<br>

## knn(x0, x, y, k)
Calculates K nearest neighbours for one variable <br>
- x0 : Observation you are trying to predict
- x : Observations used to predict
- y : Prediction values corresponding to observations in x
- k : The k nearest neighbours to consider

<br>

## bootstrap(B, x, replacement = TRUE)
Returns a vector of length B randomly sampled from x
- B : number of samples
- x : sampling variable
- replacement (DEFAULT = TRUE) : with or without replacement
