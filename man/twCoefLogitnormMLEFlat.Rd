\name{twCoefLogitnormMLEFlat}
\alias{twCoefLogitnormMLEFlat}
\title{twCoefLogitnormMLEFlat}
\description{Estimating coefficients of a maximally flat unimodal logitnormal distribution from mode 	}
\usage{twCoefLogitnormMLEFlat(mle)}
\arguments{
  \item{mle}{numeric vector: the mode of the density function}
}
\details{When increasing the sigma parameter, the distribution becomes
eventually becomes bi-model, i.e. has two maxima.	
This function estimates parameters for given mode, so that the distribution assigns high  
densitiy to a maximum range, i.e. is maximally flat, but still is unimodal.}


\author{Thomas Wutzler}





