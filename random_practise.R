mrate <- (murders$total / murders$population)*100000
rate <- mrate <= 1
rate
murders$state[rate]

safe <- mrate <=1
west <- murders$region == "West"
sw <- safe & west

murders$state[sw]

matk <- match(c("Florida","Ohio","Texas"),murders$state)
matk

x <- c("Boston","Dakota","Florida") %in% murders$state
x

pop_in_millions <- murders$population / 10^6 
total_murd <- murders$total
plot(pop_in_millions,total_murd)


hist(mrate)

oof <- mrate >= 15
oof
murders$state[oof]

boxplot( mrate~region,data = murders)
