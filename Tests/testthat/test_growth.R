test_that("test_growth", {
  expect_equal(round(growth(r = 0.1, t = 50, p0 = 100), 2),
               14841.27)
})
