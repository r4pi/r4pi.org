# Using R on the Raspberry Pi


## Installing packages

By deafult, our build of R uses the r4pi custom CRAN mirror for packages.

You can see this by running the following inside of R:

```
options("repos")
```

This mirror is a little different from public CRAN. It currently offers a much reduced package set (all of which were sourced directly from CRAN itself) that are pre-compiled for the Raspberry Pi. Public CRAN only offer source code packages for Linux users which can make some packages difficult and time consuming to install. Our pre-compiled packages are an effort to make the installation process simpler.

At present, the packages available should be adequate to work through the R4DS book -- our primary aim -- but may not contain enough packages for all users. In this case the user is welcome to switch back to using public CRAN.

Packages are installed as usual using, for example:

```
install.packages("tidyverse")
```


