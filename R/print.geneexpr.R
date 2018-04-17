#' print.geneexpr function
#'
#' S3 printing function of geneexpr
#' @param object geneexpr object
#' @return prints a list of the results of class "geneexpr"
#' @export

print.geneexpr <- function( object ) {
  if (! any( class(object)=="geneexpr") )
    stop("Error: object is not a geneexpr object.")

  cat("Object of class geneexpr with", length(object$values), "values.\n")
}
