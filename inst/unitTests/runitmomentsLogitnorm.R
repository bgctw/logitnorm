#TODO

.setUp <-function () {
}

.tearDown <- function () {
}

test.1 <- function(){
	theta0 <- c(mu=1.5, sigma=0.8)
	#plot the true and the rediscovered distributions
	xGrid = seq(0,1, length.out=81)[-c(1,81)]
	dx <- dlogitnorm(xGrid, mu=theta0[1], sigma=theta0[2])
	plot( dx~xGrid, type="l")
	
	moments <- momentsLogitnorm(mu=theta0[1], sigma=theta0[2] )
	#check by monte carlo integration
	z <- rlogitnorm(1e6, mu=theta0[1], sigma=theta0[2]);	var(z)
	checkEqualsNumeric( mean(z), moments["mean"], tolerance=1e-3)
	checkEqualsNumeric( var(z), moments["var"], tolerance=6e-3)
}

