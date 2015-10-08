\name{twCoefLogitnormMLE}
\alias{twCoefLogitnormMLE}
\title{twCoefLogitnormMLE}
\description{Estimating coefficients of logitnormal distribution from mode and upper quantile	}
\usage{twCoefLogitnormMLE(mle, quant, perc = 0.999)}
\arguments{
  \item{mle}{numeric vector: the mode of the density function}
  \item{quant}{numeric vector: the upper quantile value}
  \item{perc}{numeric vector: the probability for which the quantile was specified}
}

\value{numeric matrix with columns \code{c("mu","sigma")}
rows correspond to rows in mle, quant, and perc}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{

# estimate the parameters, with mode 0.7 and upper quantile 0.9
(theta <- twCoefLogitnormMLE(0.7,0.9))

x <- seq(0,1,length.out=41)[-c(1,41)]	# plotting grid
px <- plogitnorm(x,mu=theta[1],sigma=theta[2])	#percentiles function
plot(px~x); abline(v=c(0.7,0.9),col="gray"); abline(h=c(0.999),col="gray")
dx <- dlogitnorm(x,mu=theta[1],sigma=theta[2])	#density function
plot(dx~x); abline(v=c(0.7,0.9),col="gray")

# vectorized
(theta <- twCoefLogitnormMLE(mle=seq(0.4,0.8,by=0.1),quant=0.9))
}
