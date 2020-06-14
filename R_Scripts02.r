# this a logistic regresssion model I used data and techniques from Matt North's 'Data Mining for The Masses'
#import data
ch9Train<-read.csv(file.choose(), header = TRUE)
ch9Score<-read.csv(file.choose(), header = TRUE)
attach(ch9Train)
#need to load MASS package
library(MASS)
#use glm function
ch9LogModel<-glm(X2nd_Heart_Attack ~ Age + Marital_Status + Gender + Weight_Category + 
                   Cholesterol + Stress_Management + 
                   Trait_Anxiety, data = ch9Train, family = binomial())
#the above is not working the Error says 'Error in eval(family$initialize) : y values must be 0<=y<=1'
#this error has become fatal although it did not seem to be in his lecture on 6/9/20
class(X2nd_Heart_Attack)
#the above command reveals we are dealing with acharacter command so according to my research on
#Stack Overflow we need to conver it to a factor. Let's see if that will help.
#once I converted it to a factor with the below line of code it worked well
ch9Train$X2nd_Heart_Attack<-as.factor(ch9Train$X2nd_Heart_Attack)
#Note: I had to convert it like up above becaue R makes a copy of the data so you need to reassign it. 
ch9predictions<-predict(ch9LogModel,ch9Score,type = "response")
#now we will concatenate the scoring data set with the predictions and put it into a data frame.
ch9output<-data.frame(ch9predictions,ch9Score)
View(ch9output)

