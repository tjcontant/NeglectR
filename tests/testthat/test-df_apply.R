test_that("numeric apply works", {
  data <- data.frame(nums = c(1:7))
  func <- function(.int) {return(.int * 2)}
  filt <- function(col) {is.numeric(col)}
  expect_equal(df_apply(data, func, filt), 
               data.frame(nums = c(2, 4, 6, 8, 10, 12, 14)))
})