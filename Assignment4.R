frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
blood_p <- c(103,87,32,42,59,109,78,205,135,176)
visit_1 <- c(1,1,1,1,0,0,0,0,NA,1)
visit_2 <- c(0,0,1,1,0,0,1,1,1,1)
visit_3 <- c(0,1,0,1,0,1,0,1,1,1)

data <- data.frame(frequency,blood_p,visit_1,visit_2,visit_3)

head(data)
data

library(tidyverse)
library(ggplot2)

install.packages("patchwork") 
library(patchwork)



# histogram

ggplot <- data %>%
  ggplot(aes(blood_p))+
  geom_histogram(binwidth = 35, fill = "#00fff3", color = "green", alpha = 0.7)+
  theme_bw()+
  labs( x = "Blood Pressure",
        y = "Frequency",
        title = "Histogram")

# boxplot

boxplot <- data %>%
  ggplot(aes(x= blood_p, y = NULL))+
  geom_boxplot( fill = "pink", color = "brown")+
  theme_bw()+
  coord_flip()+
  labs( x = "Blood Pressure",
        y = NULL,
        title = "Boxplot")

ggplot + boxplot




#     improving the code 



library(tidyverse)

# Drop rows with any NA values
cleaned_data <- data %>%
  drop_na()

# Combine the visit data into long format for easier plotting
data_long <- cleaned_data %>%
  pivot_longer(cols = starts_with("visit"), 
               names_to = "visit_type", 
               values_to = "visit_value")

# Create boxplots to compare BP by visit type
ggplot(data_long, aes(x = as.factor(visit_value), y = blood_p, fill = visit_type)) +
  geom_boxplot() +
  theme_bw() +
  labs(x = "Visit Type", 
       y = "Blood Pressure", 
       title = "Blood Pressure by Visit Type") +
  facet_wrap(~ visit_type)  # Create separate plots for each visit type


install.packages("patchwork")

library(tidyverse)
library(patchwork)


# Drop rows with any NA values
cleaned_data <- data %>%
  drop_na()

# Combine the visit data into long format for easier plotting
data_long <- cleaned_data %>%
  pivot_longer(cols = starts_with("visit"), 
               names_to = "visit_type", 
               values_to = "visit_value")

# Create boxplots to compare BP by visit type
a <- ggplot(data_long, aes(x = as.factor(visit_value), y = blood_p, fill = visit_type)) +
  geom_boxplot() +
  theme_bw() +
  labs(x = "Visit Type", 
       y = "Blood Pressure", 
       title = "Blood Pressure by Visit Type") +
  facet_wrap(~ visit_type)  # Create separate plots for each visit type

a + ggplot
