# R4Pi - R for the Raspberry Pi

This repo contains the source for the [r4pi.org](https://r4pi.org) website.


The aim of r4pi.org is to provide an up-to-date version of R for the Raspberry Pi computer.

In addition, we provide access to pre-compiled binary versions of many of the packages available from CRAN.

## Installation and usage

Please see the instructions at [R4Pi.org](https://r4pi.org) for detailed installation and usage instructions.

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
