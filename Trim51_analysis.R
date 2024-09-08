# Read the text file into a data frame
# Read the text file into a data frame

getwd()
my_data <- read.table("/Users/tusharsingh/Documents/R/untitled folder/TRIM51", header = TRUE)

head(my_data)
tail(data)
# OBSERVING RESIDUES HAVING LESS THAN 0.5 (VLXT) SCORE
count_VLXT <- my_data %>%
  filter(VLXT < 0.5)
length(count_VLXT$Num) 
summary(count_VLXT) #or can just do this


# OBSERVING RESIDUES HAVING LESS THAN 0.5 (VSL2) SCORE
count_VSL2 <- my_data %>%
  filter(VSL2 < 0.5)
summary(count_VSL2)
length(count_VSL2$Num)


# CALCULATING THE AVG MEAN of VLXT score
count_avgm_VLXT <- my_data %>%
  filter(VLXT < 0.5) %>%
  summarize(avg_mean = mean(VLXT))
count_avgm_VLXT

# CALCULATING THE AVG MEAN of VSL2 score
count_avgm_VSL2 <- my_data %>%
  filter(VSL2 < 0.5) %>%
  summarize(avg_mean = mean(VSL2))
count_avgm_VSL2
