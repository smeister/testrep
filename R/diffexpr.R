#' diffexpr function
#'
#' Makes the difference on two lists of genes input
#' @param genes1 genes from the first list
#' @param genes2 genes from the second list
#' @return the difference value
#' @export

diffexpr <- function( genes1, genes2 ) {

  mgenes1 <- tapply( genes1$values, genes1$names, FUN=mean)
  mgenes2 <- tapply( genes2$values, genes2$names, FUN=mean)

  diff <- mgenes1 - mgenes2[ match(names(mgenes1), names(mgenes2)) ]
  diff <- diff[is.finite(diff)]
  diff
}
