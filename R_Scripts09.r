#plot data to see if there is relationship
plot(HeightWeight)
#there is a relationship so lets see the correlation coeffiecients
cor(HeightWeight)
#Rho (correlation coefficient) is .7050985
 
options(digits = 10)
attach(Question1)
fit<-lm(Price~Sqft + Beds + Baths)
predict(fit,data.frame(Sqft=2500,Beds=3,Baths=2),interval = "confidence")
#here we are changing the interval we want to predict
predict(fit,data.frame(Sqft=2500,Beds=3,Baths=2),interval = "prediction")
#change scientific notation
options(scipen = 10)
attach(Question4)
#I need to create 3 different linear models for three different questions they are asking
linear_model4Income<-lm(SAT~Income)
linear_model4GPA<-lm(SAT~GPA)
linear_model4GPAandIncome<-lm(SAT~Income + GPA)
# I need to see them
summary(linear_model4GPAandIncome)
summary(linear_model4Income)
summary(linear_model4GPA)
predict(linear_model4GPAandIncome,data.frame(Income=80000,GPA=3.5))
predict(linear_model4GPAandIncome,data.frame(Income=80000,GPA=3.5),interval = "prediction")

attach(Question1)
#object to store linear model and view it
LMQuestion1<-lm(Consumption~`Disposable Income`)
summary(LMQuestion1)
#object to store linear model and view it
attach(Question3)
LMQuestion3<-lm(GPA~GRE)
summary(LMQuestion3)
confint(LMQuestion3, level=.90)
predict(LMQuestion3, data.frame(GRE=710), interval = "confidence")
predict(LMQuestion3, data.frame(GRE=710), interval = "prediction", level=.90)
detach(Question3)
attach(Question5)
LMQuestion5<-lm(SAT~Income + GPA)
summary(LMQuestion5)
predict(LMQuestion5,data.frame(Income=80000,GPA=3.5))



