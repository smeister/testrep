#' plot.geneexpr function
#'
#' S3 plotting function of geneexpr
#' @param object geneexpr object
#' @return a histogram of the results of class "geneexpr"
#' @export
plot.geneexpr <- function( object ) {
  if (! any( class(object)=="geneexpr") )
    stop("Error: object is not a geneexpr object.")

  hist(object$values)
}
