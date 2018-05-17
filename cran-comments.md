## Note
In response to email from Kurt Hornik Dez, 2nd 2017:
These seem to have undeclared package dependencies in their unit test
code (R files in inst/unitTests), see below.

We removed the library call to MASS

## Test environments
* local R 3.4.3 on Mint17 64bit
* Ubuntu 14.04 (on travis-ci), R 3.4.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs nor WARNINGs nor NOTEs


  