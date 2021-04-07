# Installation


## Pre-requisites

You must be running the official Raspberry Pi OS (previously called Raspbian) on your system and it must be up to date.

Technically, the software should work on all versions of the Pi, however due to memory constraints with older versions
and the Pi Zero, we therefore recommend a Raspberry Pi 4 with 2G or more of RAM.

You can check your Raspberry Pi model with:

```
cat /sys/firmware/devicetree/base/model;echo
```

You are, of course, welcome to run the software on any Raspberry Pi, but you should expect poor performance on systems
with low memory.


## Setting things up

Before you can install the r4pi build of R, we need to do a couple of things to get ready.

First we need to import the r4ds gpg encryption key. This allows your system to verify that the software you're
installing comes from a trusted source.

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

If you want to make you're life a little easier you can make R start by just typing `R`. You should **NOT** do this if
you have other versions of R installed already.

```
sudo ln -s /opt/R/4.0.3/bin/R /usr/bin/R
sudo ln -s /opt/R/4.0.3/bin/Rscript /usr/bin/Rscript
```
