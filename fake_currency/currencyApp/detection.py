
# import neccessary packages
import pandas as pd
import numpy as np
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as plt
#importing dataset
dataset = pd.read_csv("https://raw.githubusercontent.com/leducsang97/Detecting-counterfeit-currency/master/banknote.csv")
dataset.head()
#divide data into features and label set
X = dataset.drop(["class"], axis = 1)
y = dataset.filter(["class"], axis = 1)
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y,  test_size=0.25, random_state=42)
#applying scaling on training and test data
from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform (X_test)
#importing logistic regression model
from sklearn.linear_model import LogisticRegression
 
#training the logistic regression model
classifier = LogisticRegression()
classifier.fit(X_train, y_train)
 
#making predicions on test set
y_pred = classifier.predict(X_test)
single_record = scaler.transform (X.values[50].reshape(1, -1))
 
#making predictions on the single record
fake_note = classifier.predict(single_record)
print(fake_note)