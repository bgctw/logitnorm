\name{twCoefLogitnormE}
\alias{twCoefLogitnormE}
\title{twCoefLogitnormE}
\description{Estimating coefficients of logitnormal distribution from expected value, i.e. mean, and upper quantile.	}
\usage{
twCoefLogitnormE(mean,
quant,
perc = c(0.975),
method = "BFGS",
theta0 = c(mu = 0,
sigma = 1),
returnDetails = FALSE,
...)
}
\arguments{
  \item{mean}{the expected value of the density function}
  \item{quant}{the quantile values}
  \item{perc}{the probabilites for which the quantiles were specified}
  \item{method}{method of optimization (see \code{\link{optim}})}
  \item{theta0}{starting parameters}
  \item{returnDetails}{if TRUE, the full output of optim is returned with attribut resOptim}
  \item{\dots}{
}
}

\value{named numeric matrix with estimated parameters of the logitnormal distrubtion.
colnames: \code{c("mu","sigma")}}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{
# estimate the parameters
(thetaE <- twCoefLogitnormE(0.7,0.9))

x <- seq(0,1,length.out=41)[-c(1,41)]	# plotting grid
px <- plogitnorm(x,mu=thetaE[1],sigma=thetaE[2])	#percentiles function
plot(px~x); abline(v=c(0.7,0.9),col="gray"); abline(h=c(0.5,0.975),col="gray")
dx <- dlogitnorm(x,mu=thetaE[1],sigma=thetaE[2])	#density function
plot(dx~x); abline(v=c(0.7,0.9),col="gray")

z <- rlogitnorm(1e5, mu=thetaE[1],sigma=thetaE[2])
mean(z)	# about 0.7

# vectorized
(theta <- twCoefLogitnormE(mean=seq(0.4,0.8,by=0.1),quant=0.9))
}
