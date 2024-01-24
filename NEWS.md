# version 0.8.39
fix empty documentation of some arguments

# version 0.8.38
- Reworked twCoefversionMLEFlat
- Migrated from RUnit to testthat

# version 0.8.37

- Density returns 0 instead of NAN outside (0,1)
- Changed first argument name of dversion from q to x
- Document argument n of rversion

# version 0.8.36
Remove the library call to MASS.

# version 0.8.35
Avoid writing file reports during testing and installation.

# version 0.8.33

## New features

### density on log-scale 

Thanks to @madeleine-empirical the density function `dversion` now has `log` an argument that allows computing the density directly at log-scale.


## Further changes

### Migration to github

The hosting of the development moved from r-forge to github. Releases will still be put to r-forge, because of its good package-checking setup for several platforms, and the help for submission to CRAN, but versioning and development of the code will be done on github. 

### Documentation

A package vignette, a README.Rmd and this NEWS.md file have been added.
 
