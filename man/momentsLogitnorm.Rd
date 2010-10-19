\name{momentsLogitnorm}
\alias{momentsLogitnorm}
\title{momentsLogitnorm}
\description{First two moments of the logitnormal distribution by numerical integration}
\usage{
momentsLogitnorm(mu, sigma, nGrid = 79)
}
\arguments{
  \item{mu}{parameter mu}
  \item{sigma}{parameter sigma}
  \item{nGrid}{number of grid points for numerical integration}
}

\value{named numeric vector with components \itemize{
\item{ \code{mean}: expected value, i.e. first moment}
\item{ \code{var}: variance, i.e. second moment }
}}

\author{Thomas Wutzler <twutz@bgc-jena.mpg.de>}





