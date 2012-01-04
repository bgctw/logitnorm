\name{dlogitnorm}
\alias{dlogitnorm}
\alias{logitnorm}
\title{dlogitnorm}
\description{Density function of logitnormal distribution	}
\usage{
dlogitnorm(q,
mu = 0,
sigma = 1,
...)
}
\arguments{
  \item{q}{quantiles}
  \item{mu}{distribution parameters}
  \item{sigma}{
}
  \item{\dots}{further arguments passed to \code{\link{dnorm}}: \code{mean}, and \code{sd} for mu and sigma respectively.}
}
\details{\describe{\item{Logitnorm distribution}{ 
\itemize{
\item{density function: dlogitnorm }
\item{distribution function: \code{\link{plogitnorm}} }
\item{quantile function: \code{\link{qlogitnorm}} }
\item{random generation function: \code{\link{rlogitnorm}} }
}
}}

\describe{\item{Transformation functions}{ 
\itemize{
\item{ (0,1) -> (-Inf,Inf): \code{\link{logit}} }
\item{ (-Inf,Inf) -> (0,1): \code{\link{invlogit}} }
}
}}

\describe{\item{Moments and mode}{ 
\itemize{
\item{ Expected value and variance: \code{\link{momentsLogitnorm}} }
\item{ Mode: \code{\link{modeLogitnorm}} }
}
}}

\describe{\item{Estimating parameters}{ 
\itemize{
\item{from mode and upper quantile: \code{\link{twCoefLogitnormMLE}} }
\item{from median and upper quantile: \code{\link{twCoefLogitnorm}} }
\item{from expected value, i.e. mean and upper quantile: \code{\link{twCoefLogitnormE}} }
\item{from a confidence interval which is symmetric at normal scale: \code{\link{twCoefLogitnormCi}} }
\item{from prescribed quantiles: \code{\link{twCoefLogitnormN}} }
}
}}}


\author{Thomas Wutzler}





