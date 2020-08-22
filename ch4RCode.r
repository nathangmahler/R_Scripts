ch4carcorrelations <- read.csv(file.choose(), header=T)
cormatrix<-cor(ch4carcorrelations)
View(cormatrix)

cormatrixSpearman<- cor(ch4carcorrelations,method = "spearman")
View(cormatrixSpearman)
