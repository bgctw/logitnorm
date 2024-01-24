\name{dlogitnorm}
\alias{dlogitnorm}
\title{dlogitnorm}
\description{Density function of logitnormal distribution	}
\usage{dlogitnorm(x, mu = 0, sigma = 1, log = FALSE, 
    ...)}
\arguments{
  \item{x}{vector of quantiles}
  \item{mu}{scale distribution parameter}
  \item{sigma}{location distribution parameter}
  \item{log}{if TRUE, the log-density is returned}
  \item{\dots}{further arguments passed to \code{\link{dnorm}}: \code{mean},
and \code{sd} for mu and sigma respectively.  }
}
\details{\describe{\item{Logitnorm distribution}{ 
\itemize{
\item{density function: dlogitnorm }
\item{distribution function: \code{\link{plogitnorm}} }
\item{quantile function: \code{\link{qlogitnorm}} }
\item{random generation function: \code{\link{rlogitnorm}} }
}
}}

The function is only defined in interval (0,1), but the density 
returns 0 outside the support region.}


\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}

