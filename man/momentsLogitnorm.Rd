\name{momentsLogitnorm}
\alias{momentsLogitnorm}
\title{momentsLogitnorm}
\description{First two moments of the logitnormal distribution by numerical integration}
\usage{momentsLogitnorm(mu, sigma, abs.tol = 0, ...)}
\arguments{
  \item{mu}{parameter mu}
  \item{sigma}{parameter sigma}
  \item{abs.tol}{chaning default to \code{\link{integrate}}}
  \item{\dots}{further parameters to the \code{\link{integrate}} function}
}

\value{named numeric vector with components \itemize{
\item{ \code{mean}: expected value, i.e. first moment}
\item{ \code{var}: variance, i.e. second moment }
}}

\author{Thomas Wutzler}




\examples{
(res <- momentsLogitnorm(4,1))
(res <- momentsLogitnorm(5,0.1))
}
