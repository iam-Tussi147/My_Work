library(dslabs)
data(olive)
head(olive)

str(olive)
palmit <- olive$palmitic * 100
palmito <- olive$palmitoleic * 100
plot(palmit,palmito)
plot(palmito,palmit)

hist(olive$eicosenoic)
?boxplot
boxplot( olive$palmitic~olive$region ,data=olive)



