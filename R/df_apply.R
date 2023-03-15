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
#' x <- data.frame(c(1:7))
#' y <- function(.int) {return(.int * 2)}
#' z <- function(c) {is.numeric(c)}
#' df_apply(x, y, z)
df_apply <- function(.data, .fun, .filter, ...) {
  # apply .filter to each column of .data and get logical indices
  indices <- sapply(.data, .filter)
  # apply .fun to each column of .data where .filter returns TRUE
  modified_cols <- lapply(.data[indices], .fun, ...)
  # combine modified columns and unchanged columns into a new data frame
  new_data <- cbind(.data[!indices], modified_cols)
  # return the new data frame
  return(new_data)
}