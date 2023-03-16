#' Apply alteration to dataframe
#'
#' @param .data A dataframe to alter.
#' @param .fun A function that can be applied to a column of a data frame and return a column of a data frame.
#' @param .filter A function that can be applied to a columns of a data frame and returns.
#' @param ... Any other additional parameters passed to the function.
#'
#' @return An altered dataframe.
#' @export
#'
#' @examples
#' funct <- function(.int) {return(.int * 2)}
#' filt <- function(c) {is.numeric(c)}
#' df_apply(presidents, funct, filt)
#' 
#' 
df_apply <- function(.data, .fun, .filter, ...) {
  indices <- sapply(.data, .filter)
  modified_cols <- lapply(.data[indices], .fun, ...)
  new_data <- cbind(.data[!indices], modified_cols)
  return(new_data)
}

