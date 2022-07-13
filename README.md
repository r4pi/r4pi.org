# R4Pi - R for the Raspberry Pi

This repo contains the source for the [r4pi.org](https://r4pi.org) website.


The aim of r4pi.org is to provide an up-to-date version of R for the Raspberry Pi computer.

In addition, we provide access to pre-compiled binary versions of many of the packages available from CRAN.

## Pre-requisites

You must be running the official Raspberry Pi OS (previously called Raspbian) on your system and it must be up to date. At the time of writing, the latest version is referred to as "Bullseye".

You can check your OS version with:

```
cat /etc/os-release
```

You can update the installed packages with:

```
sudo apt update && sudo apt upgrade
```

Technically, the software should work on all versions of the Pi, however due to memory constraints with older versions and the Pi Zero, we therefore a Raspberry Pi 4 with 2G or more of RAM.

You can check your Raspberry Pi model with:

```
cat /sys/firmware/devicetree/base/model;echo
```

You are, of course, welcome to run the software on any Raspberry Pi, but you should expect poor performance on systems with low memory.


## Setting things up

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
sudo apt install r4pi
```

Assuming that's successful, you're now ready to start using R.

You can start R by running:

```
R
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

## The r4pi.org website

The website is built using mkdocs and mkdocs-material.

Create a virtual environment for the project.

```
python3 -m venv venv
```

activate the virtual environment:

```
source venv/bin/activate
```

Install the required dependencies:

```
python3 -m pip install -r requirements.txt
```

The site can then be edited as required.

**Note:** Because the site is served from GitHub Pages, the source files are in
`content` and the generated html is in `docs`.

The build the site after changes, run:

```
mkdocs build
```

