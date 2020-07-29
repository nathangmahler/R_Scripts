#building a Logit model
attach(Mortgage)
Logit_model<-glm(y~x1+x2,family = binomial(link = "logit"), data = Mortgage)
#view the data
summary(Logit_model)
#Linear model
#overall LPM is y=-.64+.04x
-.64+.04*(23)
-.64+.04*(40)
#logit model
(exp(-5.90+(.15*23)))/(1+exp(-5.90+(.15*23)))
(exp(-5.90+(.15*40)))/(1+exp(-5.90+(.15*40)))
#linear
-.50+(.26*8)+(-.06 *10)
-.50+(.26*8)+(-.06 *25)
#logit
(exp(-1.90+(0.99*8)+(-0.30 *10)))/(1+exp(-1.90+(0.99*8)+(-0.30*10)))
(exp(-1.90+(0.99*8)+(-0.30 *25)))/(1+exp(-1.90+(0.99*8)+(-0.30*25)))
#another logit model
(exp(-0.165+(3.289*0.38)))/(1+exp(-0.165+(3.289*0.38)))
