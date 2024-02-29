library("readxl")

data <- read_excel("/Users/yuxichen/biostat620/hw2/yuxi_data.xlsx")

###Seemingly unrelated regression (SUR) 
library(systemfit)

model1 = Total.ST.min ~ total_lag1 + Xt + Zt
model2 = Social.ST.min ~ social_lag1 + Xt + Zt

model = list(model1, model2)

sur_model = systemfit(model, method="SUR", data = data)

summary(sur_model)
