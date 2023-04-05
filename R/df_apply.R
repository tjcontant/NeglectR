#' Apply alteration to data frame
#'
#' @param .data A data frame to alter.
#' @param .fun A function that can be applied to a column of a data frame and return a column of a data frame.
#' @param .filter A function that can be applied to a columns of a data frame and returns TRUE or FALSE.
#' @param ... Optional arguments to .fun.
#'
#' @return A modified data frame with columns in the original order.
#' @export
#'
#' @examples
#' funct <- function(.int, .sigfigs) {return(signif((.int * 2), .sigfigs))}
#' df_apply(presidents, funct, is.numeric, .sigfigs = 2)
#' 
df_apply <- function(.data, .fun, .filter, ...) {
  stopifnot(is.data.frame(.data))
  res <- lapply(.data, function(x) {
    if (.filter(x)) .fun(x, ...)
    else x
  })
  return(data.frame(res))
}
