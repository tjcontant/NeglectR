test_that("numeric apply works", {
  data <- data.frame(nums = c(1:7))
  func <- function(.int) {return(.int * 2)}
  expect_equal(df_apply(data, func, is.numeric), 
               data.frame(nums = c(2, 4, 6, 8, 10, 12, 14)))
})

test_that("trying alternative function parameter", {
  data <- data.frame(strings = c("a", "b", "c"))
  func <- function(.str) {return(paste(.str, "!", sep = ""))}
  expect_equal(df_apply(data, func, is.character), 
               data.frame(strings = c("a!", "b!", "c!")))
})

test_that("passed non-dataframe correctly", {
  data <- 2
  func <- function(.int) {return(.int * 2)}
  expect_error(df_apply(data = 2, func, is.numeric))
})