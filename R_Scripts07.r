x1=32.2
x2=35.7
n1=8
n2=6
t=4.70
MSE=33.2
#Tukey
(x1-x2)+t*sqrt((MSE/2)*(1/n1+1/n2))
#In Tukeys method you need to make sure to use q values and NOT t values
(x1-x2)-t*sqrt((MSE/2)*(1/n1+1/n2))
#Fischer
(x1-x2)+t*sqrt(MSE*(1/n1+1/n2))

(x1-x2)-t*sqrt(MSE*(1/n1+1/n2))





