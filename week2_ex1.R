
install.packages("dplyr")
library(dplyr)

install.packages("dslabs")

library(dslabs)
data("murders")
murders <- mutate(murders,mrate = (total/population)*100000)

head(murders)

#filter

filter(murders, mrate <= 0.9)

#select

new_chart <- select(murders,state,abb,rate)
filter( new_chart, rate <= 0.7)

#pipes
murders %>% select(state,rate) %>% filter( rate <= 0.7)




