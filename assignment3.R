Name <- c("Jeb", "Donald", "Ted", "Marco","Carly", "Hillary", "Berine")

ABC_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_results <- c(12, 75, 43, 19, 1, 21, 19)

my_data <- data.frame ( Names = c("Jeb", "Donald", "Ted", "Marco","Carly", "Hillary", "Berine"),
                       ABC = c(4, 62, 51, 21, 2, 14, 15),
                       CBS = c(12, 75, 43, 19, 1, 21, 19))



# self trials 
max_value <- max(my_data$ABC)
index_abc <- which(my_data$ABC == max_value)
index_abc 


result_of_abc <- paste("The Winner is", my_data$Names[index_abc], "with", max_value, "votes")
result_of_abc



max_value2 <- max(my_data$CBS)
index_cbs <- which(my_data$CBS == max_value2)
index_cbs 


result_of_cbs <- paste("The Winner is", my_data$Names[index_cbs], "with", max_value2, "votes")
result_of_cbs

# improving the code after some help from AI

index_abc <- which.max(my_data$ABC)
index_abc

abc_winner<- my_data$Names[which.max(my_data$ABC)] # getting the winneer in 1 statement
abc_winner
cbs_winner<- my_data$Names[which.max(my_data$CBS)] # getting the winneer in 1 statement
cbs_winner











