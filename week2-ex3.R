install.packages("tidyverse")
library(tidyverse)
library(dplyr)
library(dslabs)

head(murders)

s <- murders %>% 
  filter( region == "West") %>%
  summarize( maximum = max(rate),
             minimum = min(rate),
             mean = mean(rate))
s

s$maximum

# getting avg rate 

avg_rate <- murders %>% 
  summarize (avg = sum(total)/sum(population)* 10^5)
avg_rate


#  unimproved quantile func

s <- murders %>% 
  filter( region == "West") %>%
  summarize( range = quantile (rate, c(0,0.5,1)))
s

# improved quantile func

quant <- function(x) {
   q <- quantile(x,c(0,0.5,1))
   data.frame(Minimum = q[1], Maximum = q[2], Mean = q[3])
}

murders %>%
  filter( region == "West") %>%
  summarize(quant(rate))


