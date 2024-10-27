# Load data
survival_data <- read.table("/Users/tusharsingh/Downloads/CancerSurvival.csv", sep =",", header = TRUE)
survival_data


#  mean survival by organ
mean_survival <- aggregate(Survival ~ Organ, data = survival_data, mean)



# Basic bar plot

basic <- barplot(mean_survival$Survival, 
                 names.arg = mean_survival$Organ, 
                 col = "grey", 
                 xlab = "Organ", 
                 ylab = "Mean Survival Time")

title( main="Mean Survival Time by Organ", col.main = "maroon",font.main=3)

# ggplot2

library(ggplot2)
ggplot(mean_survival, aes(x = Organ, y = Survival)) +
  geom_bar(stat = "identity", fill = "cyan") +  
  labs(title = "Mean Survival Time by Organ",        
       x = "Organ",                                
       y = "Mean Survival Time") +                    
  theme_minimal() +                                 
  theme(plot.title = element_text(color = "darkblue", size = 16, face = "bold"),  
        axis.title.x = element_text(color = "darkgrey", size = 14, face = "bold"), 
        axis.title.y = element_text(color = "darkgrey", size = 14, face = "bold"))



# lettuce 2 

library(lattice)

survival_data$Organ <- as.factor(survival_data$Organ)


xyplot(Survival ~ Organ, data = survival_data,
       type = "p",                  
       grid = TRUE,                 
       col = rainbow(length(unique(survival_data$Organ))), 
       main = "Survival Time by Organ",
       xlab = "Index",
       ylab = "Survival Time",
       scales = list(x = list(rot = 45)),
       auto.key = list(columns = 3, title = "Organ")) 

