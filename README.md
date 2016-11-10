---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/logitnorm)](http://cran.r-project.org/package=logitnorm)

## Overview

`logitnorm` package provides support for the univariate
[logit-normal
distribution](https://en.wikipedia.org/wiki/Logit-normal_distribution). In
addition to the usual randon, density, percential, and quantile function, it
helps with distribution parameters from observations.

## Installation


```r
# From CRAN
install.packages("logitnorm")

# Or the the development version from GitHub:
# install.packages("devtools")
devtools::install_github("bgctw/logitnorm")
```

## Usage

See the package vignette for an introduction.

A simple example estimates distribution parameters from observation
statistics of mode 0.7 and upper quantile 0.9. Next, the density is plotted
for across a range of quantiles.
 

```r
(theta <- twCoefLogitnormMLE(0.7,0.9))
#>             mu    sigma
#> [1,] 0.7608886 0.464783
x <- seq(0,1, length.out=81) 
d <- dlogitnorm(x, mu=theta[1,"mu"], sigma=theta[1,"sigma"])
plot(d~x,type="l")
abline(v=c(0.7,0.9), col="grey")
```

![plot of chunk example](README-example-1.png)
