library("targets")
library("tarchetypes")

tar_option_set(packages = c("neotoma", "tidyverse",  "neotoma2tibble"))


# source target plans - can also construct plans directly in this file.
source("R/neotoma_download_plan.R")
source("R/cleaning_plan.R")
source("R/analysis_plan.R")
source("R/figures_plan.R")
source("R/manuscript_plan.R")


#Combine target plans
combined_plan <- c(
  neotoma_download_plan,
  cleaning_plan,
  analysis_plan,
  figures_plan,
  manuscript_plan
)

#clean up subplans
rm(
  neotoma_download_plan,
  cleaning_plan,
  analysis_plan,
  figures_plan,
  manuscript_plan
)

#return combined plan
combined_plan
