#' Calvin University's Presidents
#' 
#' @description 
#' This data frame is a collection of information on Calvin University's presidents.
#' 
#' @format 
#' A data frame with 12 observations on 3 variables.
#'  name              name of president
#' begin_year        year in which the president took office
#' born_in_michigan  whether or not they were born in Michigan
#' 
#' 
#' @examples
#' if(require(ggplot2)) {
#'   presidents |>
#'     ggplot(aes(y = begin_year, color = born_in_michigan)) +
#'     geom_boxplot()
#' }

presidents <- data.frame(
  name = c('Geert Egberts Boer', 'Albertus John Rooks', 'John J. Hiemenga', 'Johannes Broene', 'Rienk B. Kuiper', 'Ralph Stob', 'Henry Schultze', 'William Spoelhof', 'Anthony J. Diekema', 'Gaylen J. Byker', 'Michael K. Le Roy', 'Wiebe K. Boer'),
  begin_year = c(1876, 1900, 1919, 1925, 1930, 1933, 1940, 1951, 1976, 1995, 2012, 2022),
  born_in_michigan = c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE)
)

usethis::use_data(presidents, overwrite = TRUE)