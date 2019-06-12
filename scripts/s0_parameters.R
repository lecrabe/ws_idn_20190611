####################################################################################################
####################################################################################################
## Set environment variables
## Contact remi.dannunzio@fao.org 
## 2019/06/11
####################################################################################################
####################################################################################################
####################################################################################################

### Read all external files with TEXT as TEXT
options(stringsAsFactors = FALSE)

### Create a function that checks if a package is installed and installs it otherwise
packages <- function(x){
  x <- as.character(match.call()[[2]])
  if (!require(x,character.only=TRUE)){
    install.packages(pkgs=x,repos="http://cran.r-project.org")
    require(x,character.only=TRUE)
  }
}

### Install (if necessary) two missing packages in your local SEPAL environment
packages(Hmisc)
packages(lubridate)

### Load necessary packages
packages(raster)
packages(rgeos)
packages(rgdal)

packages(dplyr)
packages(ggplot2)
packages(reshape2)


## Set the working directory
rootdir       <- "~/ws_idn_20190611/"

## Set the country code
countrycode <- "IDN"

## Go to the root directory
setwd(rootdir)
rootdir  <- paste0(getwd(),"/")
username <- unlist(strsplit(rootdir,"/"))[3]

scriptdir <- paste0(rootdir,"scripts/")
doc_dir   <- paste0(rootdir,"docs/")
data_dir  <- paste0(rootdir,"data/")
gadm_dir  <- paste0(rootdir,"data/gadm/")
tile_dir  <- paste0(rootdir,"data/tiling/")
aoi_dir   <- paste0(rootdir,"data/aoi/")
phu_dir   <- paste0(rootdir,"data/phu/")

dir.create(gadm_dir,showWarnings = F)
dir.create(tile_dir,showWarnings = F)

