oddcount <- function(n) {
  k<-0
  for (i in n ) {
    if (i%%2==1) k<- k + 1 
  }
  return(k)
}
 
u <- paste("car","truck","bike")
u
v <- strsplit(u," ")
v
rbind(c(1,2),c(3,4),c(4,6))
maths <- cbind(c(1:7),c(3:9),c(7:1))
maths[,3]

x <- cbind((1:6),(7:12),(12:17),(40:35),(61:66),(70:65))
x
x[4,4]
y <- rbind((1:6),(1:6),(1:6),(1:6),(1:6),(1:6))
y

my_list <- list(u=10,v="abc")
my_list
my_list$u
str(my_list)

dataframe <- data.frame(list(kids=c("Jack","Jake"),age=c(10,15)))
dataframe
str(dataframe)
dataframe$age
dataframe <- list(kids=c("Jack","Jake"),age=c(10,15))
lm(dataframe)

getwd()
setwd("q")






