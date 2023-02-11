# **predictive**  
Functions used in Predictive Analytics with R at NHH
## **Install**
```R
devtools::install_github('Kjellemann1/predictive')  
```
## **Functions**  
### **knn()**  
Predict using k nearest neighbour on one variable  
*knn(x0, x, y, k)*  
- x0 : observation you are trying to predict
- x : observations used to predict
- y : prediction values corresponding to observations in x
- k : k nearest neighbours to consider
### **bootstrap()**
Resampling using the bootstrap method  
*bootstrap(B, x, replacement = TRUE)*  
- B : number of samples
- x : sampling variable
- replacement : (default: TRUE) whether or not to use replacement
### **split_train_test()**
Split dataframe into training and test data  
*split_train_test(df, train_frac = 0.7)*
- df : dataframe you want to split
- train_frac : (default: 0.7) the fraction of the data you want in training data

