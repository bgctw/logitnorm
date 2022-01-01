expect_monotone_logit_slope <- function(theta, upper=0.5, lower=0.0, decreasing = FALSE) {
  x <- seq(lower,upper,length.out = 41)[-c(1,41)]	# plotting grid
  dx <- dlogitnorm(x,mu = theta[1],sigma = theta[2])	#density function
  #plot(dx~x); abline(v = c(mode,upper),col = "gray")
  if (decreasing)
    expect_true(all(diff(dx) <= 0))
  else
    expect_true(all(diff(dx) >= 0))
}

test_that("twCoefLogitnormMLEFlat", {
  # standard case
  theta9 <- theta <- twCoefLogitnormMLEFlat(0.9)
  xmode <- modeLogitnorm(theta[,"mu"],theta[,"sigma"])
  expect_equal(xmode, 0.9, tolerance = 1e-3)
  expect_monotone_logit_slope(theta, xmode)
  expect_monotone_logit_slope(theta, 1, xmode, decreasing = TRUE)
  #
  # mle < 0.5
  theta1 <- theta <- twCoefLogitnormMLEFlat(0.1)
  expect_equal(theta1[,"sigma"], theta9[,"sigma"])
  expect_equal(-theta1[,"mu"], theta9[,"mu"])
  xmode <- modeLogitnorm(theta[,"mu"],theta[,"sigma"])
  expect_equal(xmode, 0.1, tolerance = 1e-3)
  expect_monotone_logit_slope(theta, xmode)
  expect_monotone_logit_slope(theta, 1, xmode, decreasing = TRUE)
  #
  # mle == 0.5
  theta5 <- theta <- twCoefLogitnormMLEFlat(0.5)
  expect_equal(unname(theta5[,"mu"]), 0.0)
  expect_equal(unname(theta5[,"sigma"]), sqrt(2)) # 1.414214)
  xmode <- modeLogitnorm(theta[,"mu"],theta[,"sigma"])
  expect_equal(xmode, 0.5, tolerance = 1e-3)
  expect_monotone_logit_slope(theta, xmode)
  expect_monotone_logit_slope(theta, 1, xmode, decreasing = TRUE)
  # really maximum sigma?
  theta[,"sigma"] <- theta[,"sigma"] +0.01
  expect_error(expect_monotone_logit_slope(theta, xmode))
  #
  # vectorized
  theta <- twCoefLogitnormMLEFlat((c(0.9,0.1,0.5)))
  expect_equal(theta[1,], theta9[1,])
  expect_equal(theta[2,], theta1[1,])
  expect_equal(theta[3,], theta5[1,])
})
