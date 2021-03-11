test_that("test_fish_fun",{
spec_df <- factor(
  c("salmon", "tuna", "trout",
    "salmon", "tuna", "trout",
    "salmon", "salmon", "trout"))
expect_equal(names(fish_fun(species = spec_df)$common),
               "salmon")})
