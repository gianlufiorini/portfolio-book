uvr::init()

#Pinning R version
uvr::r_install("4.6.1")
uvr::r_pin("4.6.1")

#Pinning R packages
uvr::add(c("tidyverse", "gt", "skimr", "janitor", "naniar"))
