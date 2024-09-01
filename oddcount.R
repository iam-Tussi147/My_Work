oddcount <- function(n) {
  k <- 0
  for (i in n) {
    if (i %% 2 == 1) k <- k + 1 
  }
  return(k)
}

