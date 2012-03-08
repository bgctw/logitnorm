\name{twCoefLogitnormCi}
\alias{twCoefLogitnormCi}
\title{twCoefLogitnormCi}
\description{Calculates mu and sigma of the logitnormal distribution from lower and upper quantile, i.e. confidence interval.}
\usage{
twCoefLogitnormCi(lower,
upper,
perc = 0.975,
sigmaFac = qnorm(perc),
isTransScale = FALSE)
}
\arguments{
  \item{lower}{value at the lower quantile, i.e. practical minimum}
  \item{upper}{value at the upper quantile, i.e. practical maximum}
  \item{perc}{numeric vector: the probability for which the quantile was specified}
  \item{sigmaFac}{sigmaFac=2 is 95\% sigmaFac=2.6 is 99\% interval}
  \item{isTransScale}{if true lower and upper are already on logit scale}
}

\value{named numeric vector: mu and sigma parameter of the logitnormal distribution.}

\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}
\examples{
mu=2
sd=c(1,0.8)
p=0.99
lower <- l <- qlogitnorm(1-p, mu, sd )		# p-confidence interval
upper <- u <- qlogitnorm(p, mu, sd )		# p-confidence interval
cf <- twCoefLogitnormCi(lower,upper)	
all.equal( cf[,"mu"] , c(mu,mu) )
all.equal( cf[,"sigma"] , sd )
}
