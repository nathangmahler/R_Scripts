attach(AnnArbor)
#here we are creating a semi-log model because one one of the explanatory variables is a log 
# and the dependent variable is also a log.
Model_4<-lm(log(Rent)~Bed+Bath+log(Sqft), data = AnnArbor)
# I had the atomic vector error message which is why I needed to store the below out put as an object.
SEN<-summary(Model_4)
#now we are going to predict values for log(Rent) using the predict function
Pred_Rent<-predict(Model_4)
#now I need to calculate the standard error
SE<-SEN$sigma
Pred_RentFinal<-exp(Pred_Rent+SE^2/2)
#the below out put gives us the R^2 value
cor(AnnArbor$Rent,Pred_RentFinal)^2
#finding x values (Linear)
25.25 + (0.41)*(4)
25.25 + (0.41)*(5)
#quadratic
29.81+(-1.5*4)+(.15*16)
29.81+(-1.5*5)+(.15*25)
#Cubic
29.40+(-1.19*4)+(.09*16)+((.05)*64)
29.40+(-1.19*5)+(.09*25)+((.05)*125)
#Q2
attach(Q2)
Q2Linear<-lm(`Inspection Time`~Components)
summary(Q2Linear)
comp_2<-Components^2
comp_3<-Components^3
#Quadratic
Q2Q<-lm(`Inspection Time`~ Components + comp_2)
summary(Q2Q)
#cubic
Q2C<-lm(`Inspection Time`~Components + comp_2 + comp_3)
summary(Q2C)
#prediction
predict(Q2C,data.frame(Components=37,comp_2=37^2,comp_3=37^3))
#linear
18.09+1.65*62
#logarithmic
-6.59+29.25*log(62)
#exponential
exp(1.45+.05*62+((.14^2)/2))
#log-log
exp(1+.93*log(62)+((0.12^2)/2))
#linear
20+3.2*5
20+3.2*20
#quadratic
38+(3.1*5) - (0.14 * 25)
38+(3.1*20) - (0.14 * 400)
#linear
9.51 + 2.62 * 1
9.51 + 2.62 * 4
#quadratic
9.84 + (2.71 * 1) + (-.31 * (1^2)) 
9.84 + (2.71 * 4) + (-.31 * (4^2)) 
#cubic
9.90 + (1.80 * 1) + (-0.32 * 1^2) + (0.26 * 1)
9.90 + (1.80 * 4) + (-0.32 * 4^2) + (0.26 * 4^3)
