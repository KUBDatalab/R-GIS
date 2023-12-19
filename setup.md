---
title: Setup
---
# Installing and loading the necessary R packages for working with GIS data

We are going to assume that you have some knowledge of R, and that you have
R and RStudio installed on your computer.

To be blunt - if you don't already have R installed, or do not know how to do it,
you should probably take an introductory course before signing up for this.


Before we can begin working with GIS data in R, we need to install and load the 
appropriate packages. The two main packages for working with GIS data in R are 
sf and raster. We are also going to use the tidyverse packages. 
To install these packages, run the following code:

install.packages("sf")
install.packages("raster")
install.packages("tidyverse")

Once the packages are installed, we can load them into our R session with the 
library() function:


library(sf)
library(raster)
library(tidyverse)

With the sf and raster packages loaded, we are now ready to start working with 
GIS data in R.

## What did we just load?
The sf (simple features) package is a data structure and toolkit for working 
with vector data (e.g. points, lines, and polygons) in R. It provides functions 
for importing, exporting, and working with vector data in a variety of formats, 
as well as tools for performing common GIS tasks such as overlaying datasets, 
measuring distances and areas, and analyzing spatial relationships.

The raster package is a data structure and toolkit for working with raster data 
(e.g. images and grids) in R. It provides functions for importing, exporting, 
and working with raster data in a variety of formats, as well as tools for 
visualizing raster data and performing common GIS tasks such as analyzing and 
modeling spatial data.

Together, the sf and raster packages provide a comprehensive set of tools for 
working with GIS data in R, including importing and exporting data, visualizing 
data, and performing common GIS tasks.





{% include links.md %}
