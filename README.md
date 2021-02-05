# R4PI - R for the Raspberry Pi

**Note:** This project is currently in very early alpha. Some testing has been performed, but not extensive testing at this time.

The aim of r4pi.org is to provide an up-to-date version of R for the Raspberry Pi computer.

In addition, we provide access to pre-compiled versions of all the packages required to work through the [R for Data Science (R4DS) book](https://r4ds.had.co.nz) by Hadley Wickham and Garrett Grolemund.

## Pre-requisites

You must be running the official Raspberry Pi OS (previously called Raspbian) on your system and it must be up to date.

Technically, the software should work on all version sof the Pi, however due to memory constraints with older versions and the Pi Zero, we Recommend a Raspberry Pi 4.

## Setting thigs up

Before you can install the r4pi build of R, we need to do a couple of things to get ready.

First we need to import the r4ds gpg encryption key. This allows your system to verify that the software you're installing comes from a trusted source.

Open up and terminal and run:

```
curl http://debs.r4pi.org/r4pi.gpg.key | sudo apt-key add -
```

If you're copying and pasting, make sure you get the whole command, including the `-` on the end!

You may be prompted for your password for the `sudo apt-key` part as this needs to be run as root.

Now that your system trusts the r4pi repo, we need to configure your system to 'see' our repo.

Run the following:

```
sudo nano /etc/apt/sources.list.d/r4pi.list
```

Paste the following into the screen that appears.

```
### r4pi.org - please don't edit this file unless you understand what it does ###
deb http://debs.r4pi.org buster main
```

Once you're happy that it looks right, type ctrl+x to exit. You'll be asked if you want to save, say yes.

## Installing the software

Now that you've configured your system, we can go ahead and install the software.

First update all your sources:

```
sudo apt update
```

You should see the new r4pi.org source in the output somewhere.

Next install any updates that are available.

```
sudo apt upgrade
```

Finally, install the r4pi build of R.

```
sudo apt install r-r4pi
```

Assuming that's successful, you're now ready to start using R.

You can start R by running:

```
/opt/R/4.0.3/bin/R
```


## Optional extras

If you want to make you're life a little easier you can make R start by just typing `R`. You should **NOT** do this if you have other versions of R installed already.

```
sudo ln -s /opt/R/4.0.3/bin/R /usr/bin/R
sudo ln -s /opt/R/4.0.3/bin/Rscript /usr/bin/Rscript
```

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


