library(logitnorm)
sig <- .4       
mean <-  .8
invlogit(mean)

(mo <- modeLogitnorm(mean, sig, tol = invlogit(mean)/1000))

par(mfrow=c(3,1))

lvec <- rlogitnorm(mu=mean, sigma=sig, n=10000)
hist(lvec, freq=F, xlim=c(0,1))

p <- qseq <- seq(.01,1,.01)
Fp <- plogitnorm(qseq,mu=mean,sigma=sig)
densp <- dlogitnorm(Fp, mu=mean,sigma=sig)
densp[100] <- 0


plot(p,densp, type='l')
plot(p, Fp, type='l')






lines( dlogitnorm(qseq, mu=mean,sigma=sig) ~ qseq )
lines( densp ~ Fp )



