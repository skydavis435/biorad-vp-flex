# check.packages function: install and load multiple R packages.
# Check to see if packages are installed. Install them if they are not, then load them into the R session.
# Courtesy of smithdanielle - https://gist.github.com/smithdanielle/9913897
bioc_check_packages <- function(pkg){
  new_pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new_pkg)) {
    BiocManager::install(unlist(new_pkg))
  }
  sapply(pkg, library, character.only = TRUE)
}