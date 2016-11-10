\name{dlogitnorm}
\alias{dlogitnorm}
\title{dlogitnorm}
\description{Density function of logitnormal distribution	}
\usage{dlogitnorm(q, mu = 0, sigma = 1, log = FALSE, ...)}
\arguments{
  \item{q}{quantiles}
  \item{mu}{distribution parameters}
  \item{sigma}{
}
  \item{log}{if TRUE, the log-density is returned}
  \item{\dots}{further arguments passed to \code{\link{dnorm}}: \code{mean}, and \code{sd} for mu and sigma respectively.}
}
\details{\describe{\item{Logitnorm distribution}{ 
\itemize{
\item{density function: dlogitnorm }
\item{distribution function: \code{\link{plogitnorm}} }
\item{quantile function: \code{\link{qlogitnorm}} }
\item{random generation function: \code{\link{rlogitnorm}} }
}
}}}


\author{Thomas Wutzler}



\seealso{\code{\link{logitnorm}}}

