# **predictive**  
Functions used in Predictive Analytics with R at NHH  

## **Install**
```R
install.packages('https://github.com/Kjellemann1/predictive/releases/download/package_release/predictive_1.0.zip', repos = NULL, type = 'binary')
```  

## **Dependencies**
```R
install.packages('dplyr')
install.packages('Rcpp')
```  

## **Functions**  

### **split_train_test()**
Split dataframe into train and test data  
*split_train_test(df, train_frac, keep_id = TRUE)*
- df : dataframe you want to split
- train_frac : the fraction of the data you want in train
- keep_id : (default: TRUE) whether or not to keep split_train_test_id column in returned dataframes 

### **knn()**  
Predict using k nearest neighbour on one variable  
*knn(x0, x, y, k)*  
- x0 : observation you are trying to predict
- x : observations used to predict
- y : prediction values corresponding to observations in x
- k : k nearest neighbours to consider

### **knn_test()**  
Calculates predictions for each value in test data using knn()  
*knn_test(test_x0, train_x, train_y, k)*  
- test_x0 : test data column
- train_x : train data column
- train_y : train data column with values you are trying to predict  
- k : k nearest neighbours to consider

### **bootstrap()**
Resampling using the bootstrap method  
*bootstrap(B, x, quantile = -1, replacement = TRUE)*  
- B : number of samples
- x : sampling variable
- quantile : (default: -1) if -1 returns the mean, else returns the quantile specified  
- replacement : (default: TRUE) whether or not to use replacement  

### **confusion_matrix()**
Simplifies making a confusion matrix  
*confusion_matrix(test_y, predictions, margin = 1)*  
- test_y : column from test dataframe you are trying to predict
- predictions : vector containing predictions
- margin : (default : 1) parameter in the prop.table() function from base R  

