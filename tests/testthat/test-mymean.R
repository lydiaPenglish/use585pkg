context("test-mymean")

test_that("mymean works", {
  x <- c(2, 4, 6, 8, 10)
  y <- c(2, 4, 5, 8, 10, NA)
  z <- letters[1:3]
  expect_warning(mymean(z))
  expect_true(is.na(mymean(y)))
  expect_failure(
    expect_equal(mymean(c(1:8, NA), na.rm = F), mymean(c(1:8)))
  )
  expect_equal(mymean(x), 6)
})


