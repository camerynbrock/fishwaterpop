test_that("test_time_extinc_fun", {
  expect_equal(time_extinc_fun(
    n_t = 100, p_d = -0.1, n_e = 20, t = 0, t_max = 1000),
    16)
})
