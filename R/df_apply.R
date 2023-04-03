#' Apply alteration to dataframe
#'
#' @param .data A dataframe to alter.
#' @param .fun A function that can be applied to a column of a data frame and return a column of a data frame.
#' @param .filter A function that can be applied to a columns of a data frame and returns TRUE or FALSE.
#' @param ... Optional arguments to .fun.
#'
#' @return An altered dataframe.
#' @export
#'
#' @examples
#' funct <- function(.int, .sigfigs) {return(signif((.int * 2), .sigfigs))}
#' df_apply(presidents, funct, is.numeric, .sigfigs = 2)
#' 
df_apply <- function(.data, .fun, .filter, ...) {
  stopifnot(is.data.frame(.data))
  indices <- sapply(.data, .filter)
  modified_cols <- lapply(.data[indices], .fun, ...)
  new_data <- cbind(.data[!indices], modified_cols)
  return(new_data)
}

