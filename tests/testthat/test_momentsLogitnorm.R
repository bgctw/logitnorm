test_that("1", {
  set.seed(0815)
  theta0 <- c(mu=1.5, sigma=0.8)
	#plot the true and the rediscovered distributions
	xGrid = seq(0,1, length.out=81)[-c(1,81)]
	dx <- dlogitnorm(xGrid, mu=theta0[1], sigma=theta0[2])
	plot( dx~xGrid, type="l")
	
	moments <- momentsLogitnorm(mu=theta0[1], sigma=theta0[2] )
	#check by monte carlo integration
	z <- rlogitnorm(1e6, mu=theta0[1], sigma=theta0[2]);	var(z)
	expect_equal(moments["mean"], c(mean=mean(z)), tolerance=1e-3)
	expect_equal(moments["var"], c(var=var(z)), tolerance=1e-2)
})

test_that("momentsLogitnorm41", {
	(res <- momentsLogitnorm(4,1))
	expect_equal( unname(res), c(0.97189602, 0.00101663))
})

test_that("momentsLogitnorm501", {
  set.seed(0815)
  (res <- momentsLogitnorm(5,0.1))
	expect_equal( unname(res), c(9.932743e-01, 4.484069e-07), tolerance=1e-7)
})
