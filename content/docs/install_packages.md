# Installing packages

## Overview

In the R world, add-on packages that provide useful functions or otherwise extend the language in some way, come from
[CRAN](https://cran.r-project.org). CRAN serves pre-compiled binaries of these packages to Mac and Windows users, but
Linux users (like us!) only get the source code.

This makes sense as there are a very large number of Linux distributions out there and compiling binaries for all of
them isn't feasible. Source code is the default for all Linux OSes then, but it can also be difficult to work with. As
an end user, having to compile packages from source can be time consuming and packages also often require specific
build-time system dependencies that you'd need to make sure were installed before attempting to build the package.

## How R4Pi helps

To make this process easier, the R4Pi project runs it's own CRAN mirror that only contains a small subset of some of the
most popular packages available in the public CRAN. Since we know exactly which version of Linux you'll be using, we're
able to compile packages for you, making installation simpler and much quicker!

## Installation

You can see the default mirror by running the following inside of R:

```R
> options("repos")
```

Packages are installed as usual using, for example:

```R
> install.packages("tidyverse")
```

## Installing other packages

If you need to install a package that's not available in our mirror, you can still use public CRAN, either by adding it
to the list of available repos, or by specifying where a particular package should come from, like this:

```R
> install.packages(<PACKAGE_NAME>, repos = "https://cloud.r-project.org")
```
