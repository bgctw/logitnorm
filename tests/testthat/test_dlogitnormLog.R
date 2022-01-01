#require(logitnorm)

test_that("dlogitnorm",  {
	# Check dlogitnorm with arbitrary parameters at arbitrary points.
	m <- 1.4
	s <- 0.8
	x <- c(0.1, 0.8);
	# taken from https://en.wikipedia.org/w/index.php?title=Logit-normal_distribution&oldid=708557844
	x.density <- 1/s/sqrt(2*pi) * exp(-(log(x/(1-x)) - m)^2/2/s^2) / x / (1-x)
	expect_equal(x.density, dlogitnorm(x, m, s))
	expect_equal(log(x.density), dlogitnorm(x, m, s, log=TRUE))
})

test_that("plogitnorm",  {
	# Check plogitnorm with arbitrary parameters at arbitrary points.
	m <- 1.4
	s <- 0.8
	x <- c(0.1, 0.8);
	expect_equal(pnorm(log(x/(1-x)), m, s), plogitnorm(x, m, s))
	expect_equal(pnorm(log(x/(1-x)), m, s, log=TRUE), log(plogitnorm(x, m, s)))
})

