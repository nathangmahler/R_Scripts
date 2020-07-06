#import the data set from excel
library(readxl)
 Growth_value <- read_excel("C:/Users/natem/Downloads/jaggia3e_data_chapter11.xlsx", 
                                        sheet = "Growth_Value")
 View(Growth_value)
#what is the test statistic? use the var() function to calculate the sample test statistic
#and assign it to an object
 Teststat <- (10-1)* var(Growth_value$Value)/100
 # now we need to calculate the pvalue of our test
 #since this is supossed to be a 2-tailed test we need to ultiply by two
 2*pchisq(Teststat, 9, lower.tail = FALSE)
 #now we are going to calculate a variance ratio by comapring two populattion deviations
 Teststat11_2 <- var(Growth_value$Growth)/var(Growth_value$Value)
 #now we will use the pf function to find our pvalue
 pf(Teststat11_2,9,9,lower.tail=FALSE)
 
