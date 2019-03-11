context("test-sign_root")

test_that("sign root works", {
  expect_error(sign_root(letters[1:10, value =3]))
  expect_error(sign_root(1:10, value = "A"))
  expect_equal(sign_root(2, 4), 2)
  expect_equal(sign_root(2, -4), -2)
})
