# this is showing z and tests
attach(Ch10_Q36_Data_File_Using_R)
t.test(CompPremium - InsureMePremium,alternative = "greater", mu= 100)
zsum.test(mean.x = 250300, sigma.x = 21700, n.x = 33,
          mean.y = 236700, n.y = 33, sigma.y = 20000,conf.level = .95)
attach(Ques4)
t.test(Salary2008,Salary2010, alternative = "greater")
tsum.test(mean.x=468, s.x=16, n.x=103, mean.y = 329, s.y=37, n.y=102, var.equal = F)

