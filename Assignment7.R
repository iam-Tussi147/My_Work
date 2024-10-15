library("dslabs")
data("murders")
head(murders,2)
summary(murders)



«class(murders)
install.packages("pryr")
library(pryr)
otype(murders) 

isS4(murders)


# s3

murders_summary <- function(df) {
  structure(list(
    total = nrow(df),
    regions = unique(df$region)
  ), class = "murders_summary")
}

murders_obj <- murders_summary(murders)


print.murders_summary <- function(x) {
  cat("Total Murders:", x$total, "\n")
  cat("Regions:", paste(x$regions, collapse = ", "), "\n")
}

# Test 
print(murders_obj)

otype(murders_obj)





# s4


setClass("Murders",
         slots = list(
           total = "numeric",            
           regions = "character"        
         ))


murders_s4 <- new("Murders",
                  total = nrow(murders),
                  regions = as.character(unique(murders$region)))


setMethod("show", "Murders", function(object) {
  cat("Total Murders Entries:", object@total, "\n")          
  cat("Regions Covered:", paste(object@regions, collapse = ", "), "\n")  
})



# result
murders_s4
otype(murders_s4)
