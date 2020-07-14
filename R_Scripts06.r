#the data we are using will be called Public_Transportation
# we need to use the reshape2 package
library(reshape2)
Stacked<-melt(Public_Transportation)
#now I want to see the new data set I call stacked
View(Stacked)
colnames(Stacked)<-c("City","Cost")
#we need to use the aov function to create an analysis of variance object model that we can then use
# to generate our ANOVA model. we need to analyze our numerical factor as a function of our
#categorical factor. In this case cost is a function of city.
Transit<-aov(Cost~City, data=Stacked)
anova(Transit)
# now I need to generate a Tukey Confidence interval on the dataset
Stacked2<-melt(Generic)
#now I want to see the new data set I call stacked
View(Stacked2)
colnames(Stacked2)<-c("Region","Price")
#I need to construct an analysis of variance model with the aov function.
Drug<-aov(Price~Region, data = Stacked2)
anova(Drug)
#now I want to see the Tukey Confidence Intervals
TukeyHSD(Drug)
#now we are goint to do a 2way ANOVA test on a new data set that I imported
Stacked3<-melt(TwoFactor_Income)
colnames(Stacked3)<-c("Education","Field","Income")
View(Stacked3)
# now I want to run the 2 way anova test
Anova2way<-aov(Income~Education+Field,data = Stacked3)
anova(Anova2way)
#now I will do another 2 way anova test but this time with interaction
Stacked4<-melt(Income_Interaction)
View(Stacked4)
#I need to relabel the column names
colnames(Stacked4)<-c("Education","Field","Income")
#create a model
Interact<-aov(Income~Education+Field, data = Stacked4)
anova(Interact)