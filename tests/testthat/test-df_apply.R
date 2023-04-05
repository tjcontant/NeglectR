test_that("numeric apply works", {
  data <- data.frame(nums = c(1:7))
  func <- function(.int) {return(.int * 2)}
  filt <- function(col) {is.numeric(col)}
  expect_equal(df_apply(data, func, filt), 
               data.frame(nums = c(2, 4, 6, 8, 10, 12, 14)))
})

test_that("trying alternative function parameter", {
  data <- data.frame(nums = c("a", "abc", "cat"))
  func <- function(.int) {return("123")}
  expect_equal(df_apply(data, func, is.character), 
               data.frame(nums = c("123", "123", "123")))
})

test_that("passed non-dataframe correctly", {
  data <- 2
  func <- function(.int) {return(.int * 2)}
  expect_error(df_apply(data = 2, func, is.numeric))
})