# predictive
Functions used in Predictive Analytics with R

### Installation
    devtools::install_github('Kjellemann1/predictive')

### Use
    library(predictive)

<br>

## Functions

### **knn()**
Calculates K nearest neighbours for one variable <br>
knn(x0, x, y, k) <br>
- x0 : observation you are trying to predict
- x : observations used to predict
- y : prediction values corresponding to observations in x
- k : the k nearest neighbours to consider

### **bootstrap()**
Returns a vector of length B randomly sampled from x <br>
bootstrap(B, x, replacement = TRUE) <br>
- B : number of samples
- x : sampling variable
- replacement : (by default TRUE) whether or not to use replacement
