
avg <- heights[,.(mean(height))]
avg <- heights[,(mean(height))]
avg
avg <- heights[ ,":="( Avg = mean(height))]
head(heights)


heights[ height >= avg] 



head(heights)



  
a <-heights %>%
  mutate( check = height >= Avg)

heights %>%
  mutate( check = height >= Avg) 

heights %>%
  filter(height >= Avg) %>%
  print(n=Inf)
view(a)


print(a, nrow = 2000)

# start over

library(data.table)
library(dslabs)
library(dplyr)
library(tidyverse)

data("heights")
# data.table

heights <- setDT(heights)


Avg <- heights [ , mean(height)]
Avg <- heights [ , .(mean(height))]
Avg

heights [ height >= Avg]

sum(heights [ , height >= Avg])

# dplyr

avg <- mean(heights$height)
avg

heights %>%
  filter(height >= avg)%>%
  summarise( count = n())

# female and above avg height

heights[ , .( num = sum( height >= Avg)), by = sex]


z <- heights [ , count := sum(height >= Avg), by = sex]. #trash


# in dp now

heights %>%
  group_by(sex) %>%
  filter( height >= avg) %>%
  summarise( count = n())



# propostion of females 

heights [ ,.(count = sum(sex == "Female")) ]
heights [ ,.(count = sum(sex == "Male")) ]
pf <-heights [ ,.(Males = sum(sex == "Male"),Females = sum(sex == "Female")) ]



heights %>%
  group_by(sex) %>%
  summarise(count=n())
  
propotion_of_f <- (pf[,2])/(sum(pf))
propotion_of_f 

# min height 

mini <- min(heights$height)
mini



index <- match( "50" , heights$height) #imp
index
heights$sex[index]

# max h

max <- max(heights$height)
max



x <- ceiling(50):floor(82.67717)
x


heights [,.(sum(!x %in% height))]




# creating a cm scale col

heights [ , ":="(Cm = height * 2.54)] |> head() 


heights$Cm[18]


mean(heights$Cm)


# 2nd dataframe

heights2 <- heights %>%
  filter( sex == "Female")


head(heights2)

heights2 %>%
  summarise(count=n())

mean(heights2$Cm)





#/..............


library(dslabs)
library(tidyverse)
library(dplyr)
library(data.table)

head(murders)
class(murders)

murders <- copy(murders)
murders <-setDT(murders)

murders [, .(state,region)] |> head()

murders [, mrate := total/population * 10^5] |> head()

murders [, ":="( mrate =  total/population * 10^5)] |> head()

murder <- copy(murders)
head(murder)


murders %>%
  select(state,mrate) %>%
  filter( mrate < 0.7)

murders [mrate <= 0.7 , .(state,mrate)]

data("heights")

heights <- setDT(heights)

# mzking a func quantile 
mean_min_max <- function(x) {
  qs <- quantile( x , c(0.5,0,1))
  data.frame( Median = qs[1], Minimum = qs[2], Maximum = qs[3])
}

heights [, .(mean_min_max(height))]


quant <- function(y) {
  qt <- quantile( y , c(0,0.5,1))
  data.frame( Mean = qt[2], Max = qt[3] , Min = qt[1])
}

heights[ , .(quant(height))]

heights %>%
  summarize( Mean = mean(height), Max = mean(height))

heights[ sex == "Female", .(Min= min(height), Max = max(height))]

heights[ ,.(Min= min(height), Max = max(height)), by = sex]


# orders


murders[ order(population)] |> head()

murders[ order(population , decreasing = TRUE)] |> head()







#..............


