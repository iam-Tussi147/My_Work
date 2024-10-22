
x <- read.table("/Users/tusharsingh/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")


install.packages("plyr")
library(plyr)
Class_my = ddply(x, "Sex", transform, Grade.Average = mean(Grade))
Class_my

write.table(Class_my, "Sorted_Average.csv", sep = ",")


data_with_i <- subset(x, grepl("[iI]", x$Name))
write.table(data_with_i, "Data_with_i.csv", sep = ",")
