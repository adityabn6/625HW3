lr_lm <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width + Species,iris)
lr_iris <- lm_blog(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width + Species,iris)

test_that("lm_blog works", {
  expect_equal(as.numeric(lr_iris[[3]]),as.numeric(lr_lm$coefficients))
  expect_equal(as.numeric(lr_iris[[4]]),as.numeric(lr_lm$fitted.values))


})
