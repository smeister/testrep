#' geneepxr.default function
#'
#' S3 default function of geneexpr
#' @param values a specific value
#' @param names a specific name
#' @return a list of the results of class "geneexpr"
#' @export

geneexpr.default <- function ( values, names ) {

  if (length(values) != length(names))
    stop("Number of names not equal to number of values.")

  z <- list (values=values, names=names)
  class(z) <- "geneexpr"
  return(z)
}
