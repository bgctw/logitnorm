#------------ generating package tw.DEMC
# inlcuding generation of Rd files from inline-docs
# install.packages("inlinedocs")

.tmp.f <- function(){
	source("R/logitnorm.R")

	library(twMisc)
	twUtestF()
}

.tmp.f <- function(){
	library(inlinedocs)
	unlink("man",recursive=TRUE)
	package.skeleton.dx(".")
}

#R CMD check --no-vignettes --no-latex --no-install logitnorm
#R CMD check --no-vignettes --no-latex --no-codoc logitnorm
#R CMD INSTALL --html logitnorm

.tmp.f <- function(){
	library(sos)
	fres1 <- findFn("logitnormal") 
} 
