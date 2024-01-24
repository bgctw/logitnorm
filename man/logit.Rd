\name{logit}
\alias{logit}
\title{logit}
\description{Transforming (0,1) to normal scale (-Inf Inf)}
\usage{logit(p, ...)}
\arguments{
  \item{p}{percentile}
  \item{\dots}{further arguments to qlogis}
}
\details{function \eqn{logit(p) = log \left( \frac{p}{1-p} \right) = log(p) - log(1-p)}}


\author{Thomas Wutzler}



\seealso{\code{\link{invlogit}}

\code{\link{logitnorm}}}

