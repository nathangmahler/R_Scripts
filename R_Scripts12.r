#import data 
#create linear model
attach(HeightWeight)
Model1<-lm(`Weight kg`~`Height M`)
summary(Model1)
plot(Model1)
plot(HeightWeight)
#the below line of code offers a line of best fit as well, it is important to note that
# you have to have a plot (like the above line of code) before you run this line of code.
abline(lm(`Weight kg`~`Height M`))
newlm<-lm(`Weight kg`~`Height M`)
#the below line of code will give us the CI for the Height coefficient
confint(Model1)
# here I am practicing with vetors
age<-c(23,26,24,26)
attributes(age)
#the above line of code returns a null value
#the below line of code simply checks that the vector has names and as expected it returns a null value as well
names(age)
#we can simply assign names by the below line of code, if you need to overwrite these names later you can using the same code.
names(age)<-c("Michael","George","John","Jason")
#if we print the vector we can double check our work
age
#we can also check our vector to see if it has any names with the below line of code
attributes(age)
#removing names is perhaps even easier
names(age)<-NULL
names(age)
n.deck<-c(6,7,8,9,10)
deck<-c("Duke","Asassin","Captain","Ambassador","Contessa")
#basic indexing on simple vectors
deck[4]
deck[-4]
deck[c(1,3,5)]
#naming vector elements so we can access by name
names(n.deck)<-deck
names(n.deck)
n.deck
#accessing by name
n.deck["Contessa"]
n.deck[c("Contessa","Duke")]
#now we are going to slice some data
n.deck[3:5]
n.deck[-3:-5]
#create a new vector for indexing practice and using comparison operators when indexing
lv<-seq(10,100,by=10)
lv[-(4:7)]
lv[lv<30]
lv[lv<=30]
lv[-c(1:3,9:10)]
# so I can't do the following below
n.deck[-("Contesa")]
#creating a vector
a<-seq(10,120, by=10)
#dim function
dim(a)<-c(3,4)
a
s<-seq(2,30,by=2)
s
attributes(s)
dim(s)<-c(3,5)
s
#the below line of code creates a 'hypercube', this might be useful if we are 
#breaking up a study into different groups. I believe the syntax is telling us that 
#that we want 1 row and 3 columns in 5 different groups. 
dim(s)<-c(1,3,5)
s
