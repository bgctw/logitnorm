\name{twCoefLogitnormN}
\alias{twCoefLogitnormN}
\title{twCoefLogitnormN}
\description{Estimating coefficients of logitnormal distribution from a vector of quantiles and perentiles (non-vectorized).	}
\usage{twCoefLogitnormN(quant, perc = c(0.5, 0.975), method = "BFGS", 
    theta0 = c(mu = 0, sigma = 1), returnDetails = FALSE, 
    ...)}
\arguments{
  \item{quant}{the quantile values}
  \item{perc}{the probabilites for which the quantiles were specified}
  \item{method}{method of optimization (see \code{\link{optim}})}
  \item{theta0}{starting parameters}
  \item{returnDetails}{if TRUE, the full output of optim is returned instead of only entry par}
  \item{\dots}{further parameters passed to optim, e.g. control=list(maxit=1000)}
}

\value{named numeric vector with estimated parameters of the logitnormal distrubtion.
names: \code{c("mu","sigma")}}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{
    # experiment of re-estimation the parameters from generated observations
    thetaTrue <- c(mu=0.8, sigma=0.7)
    obsTrue <- rlogitnorm(thetaTrue["mu"],thetaTrue["sigma"], n=500)
    obs <- obsTrue + rnorm(100, sd=0.05)        # some observation uncertainty
    plot(density(obsTrue),col="blue"); lines(density(obs))
    
    # re-estimate parameters based on the quantiles of the observations
(theta <- twCoefLogitnorm( median(obs), quantile(obs,probs=0.9), perc = 0.9))

    # add line of estimated distribution
x <- seq(0,1,length.out=41)[-c(1,41)]	# plotting grid
    dx <- dlogitnorm(x,mu=theta[1],sigma=theta[2])
    lines( dx ~ x, col="orange")
}
