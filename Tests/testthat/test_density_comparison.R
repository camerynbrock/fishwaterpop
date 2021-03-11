test_that("test_density_comparison",{
  d_test = data.frame(values = c(1, 2, 3, 1, 2, 1, 2, 3, 1, 2, 1))
  expect_equal(density_comparison(d = d_test$values),
               "1.727273 g/mL, Mean density is denser than water")
})
