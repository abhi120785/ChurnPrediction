# -*- coding: utf-8 -*-
"""
Created on Thu Aug 15 16:00:29 2019

@author: pnl06c6y
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#Importing the dataset
dataset = pd.read_csv('Churn_Modelling.csv')

X = dataset.iloc[:,3:13].values
y = dataset.iloc[:,13].values
print(str(X))
print(str(y))
