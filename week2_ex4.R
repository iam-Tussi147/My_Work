
murders <- mutate(murders, rate = total / population * 10^5)
head(murders)
# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate %>% pull(rate)
class(us_murder_rate)

# using pull 
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  pull(rate)
us_murder_rate
class(us_murder_rate)

# groupby

murders %>%
  group_by(region) %>%
  summarize ( median = median(rate))

# arrange

murders %>%
  arrange(desc(rate)) %>%
  head()


murders %>%
  arrange(desc(rate)) %>%
  top_n(7, rate)
  

























