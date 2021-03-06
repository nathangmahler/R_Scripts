#import the data set from excel using the readxl package. I called it GoldOil and Food_calories.
#use t.test function to determine difference between 2 means, the first example is using an independent
# drwn samples while the second is using paired samples, also the null hypothese are different

t.test(GoldOil$Gold,GoldOil$Oil,alternative = "two.sided",mu=0,paired = FALSE,
       var.equal = FALSE,conf.level = 0.95)
t.test(Food_Calories$Before,Food_Calories$After,alternative = "greater",mu=0,paired = TRUE,
       var.equal = FALSE,conf.level = 0.95) 
       