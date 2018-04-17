#' summary.geneexpr function
#'
#' S3 summary function of geneexpr
#' @param object geneexpr object
#' @return the summary of the results of class "geneexpr"
#' @export
summary.geneexpr <- function( object ) {
  if (! any( class(object)=="geneexpr") )
    stop("Error: object is not a geneexpr object.")

  cat("Object of class geneexpr with", length(object$values), "values.\n")
}
