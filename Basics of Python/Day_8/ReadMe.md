## Supervised Learning
Basically it is of two types:
1. Regression
2. Classification

### Labeled data - meaning we have target value in dataset
x - axis -> Features
y - axis -> Label

## Workflow

Raw Data -> data PrePorcessing -> Split Data (train/test) -> train the model -> Evaluate the model -> Fine tuning (additional Step) -> Make Prediction

Data Preprocessing :
Handling missing values
Feature Scaling
Encoding Categorical data


Regression use case - For forecasting anything ( weather, sales etc.)

Evaluating Regression model:
MAE
MSE etc.

CLassification use case:  fraudulent credit cards , classifying them to legitimate and fraudulent

## Confusion Matrix

Accuracy inc. -> TP or TN
Error inc. -> FP or FN

## Challenges in SL
1. Overfitting - model learns too well in training data
2. Underfitting - model in too simple to capture underlying patterns in the data
3. Data quality - garbage in, garbage out
4. Feature Engineering - selecting only those column( features) that are needed

# Hyperparameter Tuning 
Improving Model