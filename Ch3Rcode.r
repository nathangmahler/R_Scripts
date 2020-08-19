ch3Exercise<-read.csv(file.choose(),header=T)
# Steps 1&2 (cleaning the data) to clean the data set properly it was easier to use the subset command, however the subset command is not introduced
#until ch7 in the book (at least that I could find) you could index the original data set but that seems
#to be a pain b/c the UNK diameters were not next to each other.
ch3ExReduced<-subset(ch3Exercise,ch3Exercise$Diameter!='UNK')
# Question 2 there are NA values in the Volume column so they need to be removed as well, I am fairly literal so
#when I tried to do the mean the first time I could not because of this and it simply returned NA
#when I did the mean after removing those values I got 339.4065, it would be helpful if you specified if you want the NA values
#removed (which is what I did) or if you want something else in there because this will affect the mean.
ch3ExReduced<-subset(ch3ExReduced,ch3ExReduced$Volume!='NA')
View(ch3ExReduced)
attach(ch3ExReduced)
mean(Volume)
# Question 3 - Again we are encountering the same problem mentioned above, I have to clean the data set a little
#bit more each time I need to do a calculation on a column
sd(ch3ExReduced$Circumference)
# Question 4 asks about a data type assignment in RapidMiner, since we are in R we can still find that information
# but you do not cover that code in the chapter. Below the code would give you the right answer.
class(ch3Exercise$Diameter)
#Question 5 is a counting question. Counting in R is confusing.
#I just finished my third programming class in R (second stats class)
# and I am still unsure of how to do it. If I have a larger data set I usually just do it in excel with the countif function.
#below is the most straightforward way to do it for this data set.
# even still it wasn't super straightforward.
table(ch3Exercise$StructuralIntegrity == 'NA')
# Question 7 is basically about indexing so the question should be reworded.
#The code I used for questions 8-10 is below.
ch3Q8<-subset(ch3Exercise,ch3Exercise$UnitType != 'Metric')
View(ch3Q8)
ch3Q9<-subset(ch3Exercise,ch3Exercise$ItemID == 21)
View(ch3Q9)
max(ch3Exercise$StructuralIntegrity)
#the above line of code will not return 40 as stated in the metadata it will return NA.
#I will make a quick dataset for
#this question (question #10)
ch3Q10<-subset(ch3Exercise,ch3Exercise$StructuralIntegrity == 40)
View(ch310)