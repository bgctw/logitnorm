\name{twCoefLogitnorm}
\alias{twCoefLogitnorm}
\title{twCoefLogitnorm}
\description{Estimating coefficients of logitnormal distribution from median and upper quantile	}
\usage{twCoefLogitnorm(median, quant, perc = 0.975, 
    ...)}
\arguments{
  \item{median}{numeric vector: the median of the density function}
  \item{quant}{numeric vector: the upper quantile value}
  \item{perc}{numeric vector: the probability for which the quantile was specified}
  \item{\dots}{
}
}

\value{numeric matrix with columns \code{c("mu","sigma")}
rows correspond to rows in median, quant, and perc}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{
# estimate the parameters, with median at 0.7 and upper quantile at 0.9
med = 0.7; upper = 0.9 
med = 0.2; upper = 0.4 
(theta <- twCoefLogitnorm(med,upper))

x <- seq(0,1,length.out = 41)[-c(1,41)]	# plotting grid
px <- plogitnorm(x,mu = theta[1],sigma = theta[2])	#percentiles function
plot(px~x); abline(v = c(med,upper),col = "gray"); abline(h = c(0.5,0.975),col = "gray")

dx <- dlogitnorm(x,mu = theta[1],sigma = theta[2])	#density function
plot(dx~x); abline(v = c(med,upper),col = "gray")

# vectorized
(theta <- twCoefLogitnorm(seq(0.4,0.8,by = 0.1),0.9))

.tmp.f <- function(){
  # xr = rlogitnorm(1e5, mu = theta["mu"], sigma = theta["sigma"])
  # median(xr)
  invlogit(theta["mu"])
  qlogitnorm(0.975, mu = theta["mu"], sigma = theta["sigma"])
}
}
