#' Skewness function
#'
#' Calculate the skewness
#' @param a enter values
#' @param na.rm If TRUE, will remove NA values
#' @return the results
#' @export

skewness <- function(a, na.rm=FALSE) {
  if (na.rm)
    a <- a[ !is.na(a) ]
  num <- mean((a-mean(a))^3)
  den <- sd(a)^3
  return(num/den)
}

kurtosis <- function(a, na.rm=FALSE) {
  if (na.rm)
    a <- a[ !is.na(a) ]
  num <- mean((a-mean(a))^4)
  den <- sd(a)^4
  return((num/den)-3)
}
