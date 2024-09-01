ls()
help("hist")
args(hist)
args(print)
args(log)
log(8,base=2)
install.packages("dslabs")
library(dslabs)
data("murders")
class(murders)

str(murders)
summary(murders)
murders$population
levels(murders$region)


codes <- c(1,2,3)
country <- c("rome","india","romania")

names(codes) <- country
codes

seque <- seq(5:7)
se <- as.character(seque)
se
ses <- as.numeric(se)
ses









