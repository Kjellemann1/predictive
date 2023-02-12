# **predictive**  
Functions used in Predictive Analytics with R at NHH

<br></br>

## **Install**
```R
devtools::install_github('Kjellemann1/predictive')  
```

<br></br>

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
*bootstrap(B, x, replacement = TRUE)*  
- B : number of samples
- x : sampling variable
- replacement : (default: TRUE) whether or not to use replacement  

### **confusion_matrix()**
General function that returns a confusion matrix  
*confusion_matrix(test_y, predictions, margin = 1)*  
- test_y : column from test dataframe you are trying to predict
- predictions : vector containing predictions
- margin : (default : 1) parameter in the prop.table() function from base R

### **logreg_confusion_matrix()**
Returns a confusion matrix from a logistic regression  
*logreg_confusion_matrix(log_reg, test, var, prob = 0.5, type = "response", margin = 1)*  
- log_reg : the regression  
- test : the test dataframe
- var : the variable you are trying to predict
- prob : (default: 0.5) probabilites ABOVE this are predicted TRUE (x > prob => TRUE)
- type : (default: TRUE) parameter in the predict() function from the stats package
- margin : (default : 1) parameter in the prop.table() function from base R  

<br></br>

## **Dependencies**
```R
install.packages('devtools')
install.packages('dplyr')
install.packages('stats)
```
