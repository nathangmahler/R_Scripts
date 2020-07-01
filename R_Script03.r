#import the data set from excel using the readxl package. I called it GoldOil.
#use t.test function to determine difference between 2 means
t.test(GoldOil$Gold,GoldOil$Oil,alternative = "two.sided",mu=0,paired = FALSE,
       var.equal = FALSE,conf.level = 0.95) 
       