
# creating dataframes

my_frame <- data.frame( names = c("rohan","sohan","tushar"),
                        age = c(24,25,22 ),
                        hobbies = c("cricket","tennis","football"))
my_frame

frame2 <- data.frame( state = c("FLorida","ohio","New York"),
                      mrate = c(30,20,43),
                      brate = c(89,99,39))
frame2

#changing class

class(frame2$state)

frame2 <- data.frame( state = c("FLorida","ohio","New York"),
                      mrate = c(30,20,43),
                      brate = c(89,99,39),
                      stringsAsFactors = FALSE)
class(frame2$state)










