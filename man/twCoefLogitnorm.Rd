\name{twCoefLogitnorm}
\alias{twCoefLogitnorm}
\title{twCoefLogitnorm}
\description{Estimating coefficients of logitnormal distribution from median and upper quantile	}
\usage{
twCoefLogitnorm(median,
quant,
perc = 0.975,
method = "BFGS",
theta0 = c(mu = 0,
sigma = 1),
returnDetails = FALSE,
...)
}
\arguments{
  \item{median}{numeric vector: the median of the density function}
  \item{quant}{numeric vector: the upper quantile value}
  \item{perc}{numeric vector: the probability for which the quantile was specified}
  \item{method}{method of optimization (see \code{\link{optim}})}
  \item{theta0}{starting parameters}
  \item{returnDetails}{if TRUE, the full output of optim is attached as attributes resOptim}
  \item{\dots}{
}
}

\value{numeric matrix with columns \code{c("mu","sigma")}
rows correspond to rows in median, quant, and perc}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{
# estimate the parameters, with median at 0.7 and upper quantile at 0.9
(theta <- twCoefLogitnorm(0.7,0.9))

x <- seq(0,1,length.out=41)[-c(1,41)]	# plotting grid
px <- plogitnorm(x,mu=theta[1],sigma=theta[2])	#percentiles function
plot(px~x); abline(v=c(0.7,0.9),col="gray"); abline(h=c(0.5,0.975),col="gray")

dx <- dlogitnorm(x,mu=theta[1],sigma=theta[2])	#density function
plot(dx~x); abline(v=c(0.7,0.9),col="gray")

# vectorized
(theta <- twCoefLogitnorm(seq(0.4,0.8,by=0.1),0.9))
}
