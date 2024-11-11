

# Initial code
tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector(length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i,])
  }
  return(outlier.vec)
}



tukey_outlier <- function(column) {
  Q1 <- quantile(column, 0.25, na.rm = TRUE)
  Q3 <- quantile(column, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  column < (Q1 - 1.5 * IQR) | column > (Q3 + 1.5 * IQR)
}


outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])


outliers[, j] <- tukey_outlier(x[, j])

# updated code

tukey_outlier <- function(column) {
  Q1 <- quantile(column, 0.25, na.rm = TRUE)
  Q3 <- quantile(column, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  column < (Q1 - 1.5 * IQR) | column > (Q3 + 1.5 * IQR)
}

tukey_multiple <- function(x) {
  outliers <- matrix(FALSE, nrow = nrow(x), ncol = ncol(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- tukey_outlier(x[, j])
  }
  outlier.vec <- apply(outliers, 1, all)
  return(outlier.vec)
}

