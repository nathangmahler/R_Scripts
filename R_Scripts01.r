#loading libraries
library(psych) 
library(MASS)
library(dplyr)
#reading in a data set, the header argument is not needed but I am in the habit so I just always do it.
ch03data<-read.csv(file.choose(), header=T)
#viewing a dataset
View(ch03data)
#viewing the same data set with certain attributes (columns)
ch03data[c(2,8:10)]
#reading in another data set
ch04Data<-read.csv(file.choose(), header = T )
View(ch04Data)
#making a correlation matrix and storing it in an object and then viewing it 
#the default way to calculate it is 'pearson', if you calculate with another method then you should explain why.
Corch04Data<-cor(ch04Data)
View(Corch04Data)
#the next section deals with association rules
#install arules package
library(arules)
#I need to import the data with factors for this to work
ch05data<-read.csv(file.choose(), header = T, colClasses = 'factor')
View(ch05data)
#verify the data I imported is in the structures I want
str(ch05data)
#create new object with only the last 7 columns
ch05dataGroups<-ch05data[6:12]
#we are modifying the data frame so we can find association rules
#we need to change all the zeroes to nulls in the data frame.
ch05dataGroups[ch05dataGroups=="0"]<-NA
#The below line of code uses the apriori algorithm, the code is basically saying that 
# we want at least 2 groups of association with a support of 20% and a confidence percent of 50
ch05rules<-apriori(ch05dataGroups, parameter = list(minlen=2, supp=0.2,conf=0.5))
#Now I want to see the rules I stored in the object I created.
inspect(ch05rules)