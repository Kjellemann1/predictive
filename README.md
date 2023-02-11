# **predictive**  
Functions used in Predictive Analytics with R at NHH
## **Install**
```R
devtools::install_github('Kjellemann1/predictive')  
```
## **Functions**  
### **knn()**  
Calculates K nearest neighbours for one variable  
knn(x0, x, y, k)  
- x0 : observation you are trying to predict
- x : observations used to predict
- y : prediction values corresponding to observations in x
- k : the k nearest neighbours to consider
### **bootstrap()**
Returns a vector of length B randomly sampled from x  
bootstrap(B, x, replacement = TRUE)  
- B : number of samples
- x : sampling variable
- replacement : (by default TRUE) whether or not to use replacement

