#this script was completed by me while trying to complete an assignment so not every line of code is important!

#load libraries

 library(readxl)
 Question1Att2 <- read_excel("C:/Users/natem/Downloads/Ch13_Q15_Data_File_Using R.xlsx")
 View(Question1Att2)
 #set options so I can see the correct amount of numbers in the results
 options(sscipen = 10)
 options(digits = 10)
 library(reshape2)
 library(DescTools)
 aov(Section~Score,data=Question1Att2)
Error in lm.fit(x, y, offset = offset, singular.ok = singular.ok, ...) : 
  NA/NaN/Inf in 'y'
In addition: Warning message:
  In storage.mode(v) <- "double" : NAs introduced by coercion
 str(Question1Att2)
tibble [30 x 2] (S3: tbl_df/tbl/data.frame)
$ Section: chr [1:30] "Section 1" "Section 1" "Section 1" "Section 1" ...
$ Score  : num [1:30] 85 68 69 52 68 95 80 74 63 74 ...
 as.numeric(Question1Att2$Section)
[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 #That did not work as expected I need to store the new data object with factors
Warning message:
  NAs introduced by coercion 
 View(Question1Att2)
 Question1Att2A<-substr(Question1Att2$Section,8,8)
 View(Question1Att2A)
 Question1Att2A<-substr(Question1Att2$Section,7,8)
 View(Question1Att2A)
 View(Question1Att2)
 View(Question1Att2)
 Question1Att2A<-substr(Question1Att2$Section,9,9)
 View(Question1Att2)
 View(Question1Att2A)
 library(tidyr)
# cleaning data:)
 Question1Att2A<-separate(Question1Att2,col = Section,into = c("Sectionchar","Sectionnum"), sep = " ")
 View(Question1Att2A)
 aov(Sectionnum~Score, data = Question1Att2A)
Call:
  aov(formula = Sectionnum ~ Score, data = Question1Att2A)
Terms:
  Score    Residuals
Sum of Squares   0.350200446 19.649799554
Deg. of Freedom            1           28

Residual standard error: 0.8377222424
Estimated effects may be unbalanced
 Question1Att2AB<-aov(Sectionnum~Score, data = Question1Att2A)
 anova(Question1Att2AB)
Analysis of Variance Table

Response: Sectionnum
Df     Sum Sq    Mean Sq F value  Pr(F)
Score      1  0.3502004 0.35020045 0.49902 0.48577
Residuals 28 19.6497996 0.70177856                
 Question1Att2AB<-aov(Score~Sectionnum, data = Question1Att2A)
 anova(Question1Att2AB)
Analysis of Variance Table

Response: Score
Df     Sum Sq   Mean Sq F value  Pr(F)
Sectionnum  2  442.86667 221.43333 2.09184 0.14302
Residuals  27 2858.10000 105.85556                
 library(readxl)
 Question3Att2 <- read_excel("C:/Users/natem/Downloads/Ch13_Q29_V24_Data_File_Using R.xlsx")
 View(Question3Att2)
 str(Question3Att2)
tibble [156 x 2] (S3: tbl_df/tbl/data.frame)
$ Day      : chr [1:156] "Fridays" "Fridays" "Fridays" "Fridays" ...
$ Customers: num [1:156] 393 362 405 437 439 452 332 390 430 365 ...
 as.factor(Question3Att2$Day)
[1] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[9] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[17] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[25] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[33] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[41] Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays   Fridays  
[49] Fridays   Fridays   Fridays   Fridays   Saturdays Saturdays Saturdays Saturdays
[57] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[65] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[73] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[81] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[89] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[97] Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays Saturdays
[105] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[113] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[121] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[129] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[137] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[145] Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays   Sundays  
[153] Sundays   Sundays   Sundays   Sundays  
Levels: Fridays Saturdays Sundays
 str(Question3Att2)
tibble [156 x 2] (S3: tbl_df/tbl/data.frame)
$ Day      : chr [1:156] "Fridays" "Fridays" "Fridays" "Fridays" ...
$ Customers: num [1:156] 393 362 405 437 439 452 332 390 430 365 ...
 library(arules)
 library(readxl)
 Question3 <- read_excel("C:/Users/natem/Downloads/Ch13_Q29_V24_Data_File_Using R.xlsx")
 View(Question3)
 str(Question3)
tibble [156 x 2] (S3: tbl_df/tbl/data.frame)
$ Day      : chr [1:156] "Fridays" "Fridays" "Fridays" "Fridays" ...
$ Customers: num [1:156] 393 362 405 437 439 452 332 390 430 365 ...
 Question3<-data.frame(as.factor(Question3$Day),Question3$Customers)
 str(Question3)
'data.frame':	156 obs. of  2 variables:
  $ as.factor.Question3.Day.: Factor w/ 3 levels "Fridays","Saturdays",..: 1 1 1 1 1 1 1 1 1 1 ...
$ Question3.Customers     : num  393 362 405 437 439 452 332 390 430 365 ...
 colnames(Question3) <- c("Day","Customers")
 View(Question3)
 aov(Day~Customers, data=Question3)
Call:
  aov(formula = Day ~ Customers, data = Question3)
Error in levels(x)[x] : only 0's may be mixed with negative subscripts
In addition: Warning messages:
1: In model.response(mf, "numeric") :
  using type = "numeric" with a factor response will be ignored
2: In Ops.factor(y, z$residuals) : ‘-’ not meaningful for factors
 aov(Customers~Day, data=Question3)
Call:
   aov(formula = Customers ~ Day, data = Question3)

Terms:
                        Day   Residuals
Sum of Squares   81499.5000 165837.7308
Deg. of Freedom           2         153

Residual standard error: 32.92273891
Estimated effects may be unbalanced
 Question3AOV<-aov(Customers~Day, data=Question3)
 anova(Question3AOV)
Analysis of Variance Table

Response: Customers
           Df    Sum Sq   Mean Sq  F value     Pr(F)    
Day         2  81499.50 40749.750 37.59525 5.2376e-14 ***
Residuals 153 165837.73  1083.907                        
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
 TukeyHSD(Question3,conf.level=0.95)
Error in UseMethod("TukeyHSD") : 
  no applicable method for 'TukeyHSD' applied to an object of class "data.frame"
 TukeyHSD(Question3AOV)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = Customers ~ Day, data = Question3)

$Day
                           diff          lwr           upr        p adj
Saturdays-Fridays  45.173076923  29.89176264  60.454391210 0.0000000002
Sundays-Fridays    -6.057692308 -21.33900659   9.223621979 0.6170099750
Sundays-Saturdays -51.230769231 -66.51208352 -35.949454944 0.0000000000

 x1=26.5
 x2=32.2
 n1=7
 n2=8
 t=3.055
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 3.410283093
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -14.81028309
 x1=26.5
 x2=35.7
 n1=7
 n2=6
 t=3.169
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 0.9587041351
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -19.35870414
 x1=32.2
 x2=35.7
 n1=8
 n2=6
 t=3.106
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 6.165267815
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -13.16526781
 x1=26.5
 x2=32.2
 n1=7
 n2=8
 t=2.861
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 2.831757751
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -14.23175775
 x1=26.5
 x2=35.7
 n1=7
 n2=6
 t=2.861
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] -0.02863599541
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -18.371364
 x1=32.2
 x2=35.7
 n1=8
 n2=6
 t=2.861
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 5.402875473
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -12.40287547
 x1=26.5
 x2=32.2
 n1=7
 n2=8
 t=2.878
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 2.882453271
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -14.28245327
 x1=26.5
 x2=35.7
 n1=7
 n2=6
 t=2.878
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 0.02586005076
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -18.42586005
 x1=32.2
 x2=35.7
 n1=8
 n2=6
 t=2.878
 MSE=33.2
 #Fischer
 (x1-x2)+t*sqrt(MSE*(1/n1+1/n2))
[1] 5.455776166
 
 (x1-x2)-t*sqrt(MSE*(1/n1+1/n2))
[1] -12.45577617
 x1=26.5
 x2=35.7
 n1=7
 n2=8
 t=4.70
 MSE=33.2
 #Tukey
 (x1-x2)+t*sqrt((MSE/2)*(1/n1+1/n2))
[1] 0.7106814671
 
 (x1-x2)-t*sqrt((MSE/2)*(1/n1+1/n2))
[1] -19.11068147
 x1=26.5
 x2=32.2
 n1=7
 n2=8
 t=4.70
 MSE=33.2
 #Tukey
 (x1-x2)+t*sqrt((MSE/2)*(1/n1+1/n2))
[1] 4.210681467
 
 (x1-x2)-t*sqrt((MSE/2)*(1/n1+1/n2))
[1] -15.61068147
 x1=26.5
 x2=35.7
 n1=7
 n2=6
 t=4.70
 MSE=33.2
 #Tukey
 (x1-x2)+t*sqrt((MSE/2)*(1/n1+1/n2))
[1] 1.45366246
 
 (x1-x2)-t*sqrt((MSE/2)*(1/n1+1/n2))
[1] -19.85366246
 x1=32.2
 x2=35.7
 n1=8
 n2=6
 t=4.70
 MSE=33.2
 #Tukey
 (x1-x2)+t*sqrt((MSE/2)*(1/n1+1/n2))
[1] 6.84178015
 
 (x1-x2)-t*sqrt((MSE/2)*(1/n1+1/n2))
[1] -13.84178015
 library(readxl)
 Question5 <- read_excel("C:/Users/natem/Downloads/Ch13_Q67_V03_Data_File.xlsx")
New names:
* `` - ...1
 View(Question5)
 colnames(Question5)<-c("Gymnast","Judge1","Judge2","Judge3")
 View(Question5)
 str(Question5)
tibble [5 x 4] (S3: tbl_df/tbl/data.frame)
 $ Gymnast: chr [1:5] "Gymnast 1" "Gymnast 2" "Gymnast 3" "Gymnast 4" ...
 $ Judge1 : num [1:5] 9.6 8.4 8.5 8 8.3
 $ Judge2 : num [1:5] 9.8 7.4 8.6 8.4 9.7
 $ Judge3 : num [1:5] 8.3 9.7 8.2 8.3 9.4
 Question5df<-data.frame(as.factor(Question5$Gymnast),Question5$Judge1,Question5$Judge2,Question5$Judge3)
 aov(Gymnast~Judge1+Judge2+Judge3, data = Question5df)
Error in eval(predvars, data, env) : object 'Gymnast' not found
 aov(Gymnast~Judge1+Judge2+Judge3, data = Question5)
Error in lm.fit(x, y, offset = offset, singular.ok = singular.ok, ...) : 
  NA/NaN/Inf in 'y'
In addition: Warning message:
In storage.mode(v) <- "double" : NAs introduced by coercion
 aov(Question5$Gymnast~Judge1+Judge2+Judge3, data = Question5)
Error in lm.fit(x, y, offset = offset, singular.ok = singular.ok, ...) : 
  NA/NaN/Inf in 'y'
In addition: Warning message:
In storage.mode(v) <- "double" : NAs introduced by coercion
 View(Question5df)
 aov(as.factor.Question5.Gymnast~Question5.Judge1+Question5.Judge2+Question5.Judge3, data = Question5df)
Error in eval(predvars, data, env) : 
  object 'as.factor.Question5.Gymnast' not found
 aov(as.factor.Question5.Gymnast.~Question5.Judge1+Question5.Judge2+Question5.Judge3, data = Question5df)
Call:
   aov(formula = as.factor.Question5.Gymnast. ~ Question5.Judge1 + 
    Question5.Judge2 + Question5.Judge3, data = Question5df)
Error in levels(x)[x] : only 0's may be mixed with negative subscripts
In addition: Warning messages:
  1: In model.response(mf, "numeric") :
  using type = "numeric" with a factor response will be ignored
2: In Ops.factor(y, z$residuals) : ‘-’ not meaningful for factors
 Question5AV<-aov(as.factor.Question5.Gymnast.~Question5.Judge1+Question5.Judge2+Question5.Judge3, data = Question5df)
Warning messages:
  1: In model.response(mf, "numeric") :
  using type = "numeric" with a factor response will be ignored
2: In Ops.factor(y, z$residuals) : ‘-’ not meaningful for factors
 anova(Question5AV)
Error in if (ssr < 1e-10 * mss) warning("ANOVA F-tests on an essentially perfect fit are unreliable") : 
  missing value where TRUE/FALSE needed
In addition: Warning message:
  In Ops.factor(object$residuals, 2) : ‘^’ not meaningful for factors
 Stacked05<-melt(Question5)
Using Gymnast as id variables
 View(Stacked05)
 colnames(Stacked05)<-c("Gymnast","Judge","Score")
 Stacked05anova<-aov(Score~Judge+Gymnast, data=Stacked05)
 anova(Stacked05anova)
Analysis of Variance Table

Response: Score
Df    Sum Sq    Mean Sq F value  Pr(F)
Judge      2 0.1613333 0.08066667 0.12690 0.88256
Gymnast    4 2.4026667 0.60066667 0.94494 0.48575
Residuals  8 5.0853333 0.63566667                