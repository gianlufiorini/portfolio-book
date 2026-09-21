uvr::init()

#Pinning R version
uvr::r_install("4.6.1")
uvr::r_pin("4.6.1")

#Pinning R packages
uvr::scan()
uvr::add(c("tidyverse", "gt", "skimr", "janitor", "naniar", "mice", "ggmice", "pins", "uvr", "withr", "nbafrank/uvr-r"))

#To align with the R and package versions used for the analyses one should use the function

