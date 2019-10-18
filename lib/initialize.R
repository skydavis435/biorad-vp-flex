# Set Repo for older versions of R
options(repos=structure(c(CRAN="http://cloud.r-project.org/")))

# Check that Packages are installed
message('Checking available packages, installing those that are missing...')
source('lib/check_packages.R')
check_packages(pkg = list('shiny',
                          'flexdashboard',
                          'tidyverse',
                          'DT',
                          'miniUI',
                          'bioRad',
                          'here',
                          'aws.s3')
)
# Load All necessary libraries
library(shiny)
library(flexdashboard)
library(tidyverse)
library(DT)
library(miniUI)
library(bioRad)
library(here)
library(aws.s3)

message('Done.')