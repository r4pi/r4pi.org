# Installation


## Pre-requisites

You must be running the official [Raspberry Pi OS](https://www.raspberrypi.org/software/operating-systems/)
(previously called Raspbian) on your system and it must be up to date.

Technically, the software should work on all versions of the Pi, however due to memory constraints with older versions
and the Pi Zero, **we recommend at least a Raspberry Pi 4 with 2GB or more** of RAM.

You can check your Raspberry Pi model in a terminal with:

```bash
cat /sys/firmware/devicetree/base/model;echo
```

You are, of course, welcome to run the software on any Raspberry Pi, but you should expect poor performance on systems
with low memory.


## About the r4pi R build

Our build of R tracks the [R Project](https://r-project.org)'s current "release" version.

This is essentially the latest version of R available


## Setting things up

Before you can install the r4pi build of R, you need to configure access to the r4pi.org software repository.

```bash
source /etc/os-release
curl -O  https://pkgs.r4pi.org/dl/${VERSION_CODENAME}/r4pi-repo-conf_0.0.1-1_all.deb
sudo dpkg -i  r4pi-repo-conf_0.0.1-1_all.deb
sudo apt update
```

You're now ready to install our build of R.

## Installing the software

Now that you've configured your system, you can go ahead and install the software.

First update all your sources:

```bash
sudo apt update
```

You should see the new r4pi.org source in the output somewhere.

Next, install any updates that are available, note that this can take some time.

```bash
sudo apt upgrade
```

Finally, install the r4pi build of R.

```bash
sudo apt install r4pi
```

Assuming that's successful, you're now ready to start using R.

You can start R by running:

```bash
R
```

Type ctrl+d twice to exit.
