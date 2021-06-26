library("targets")
library("tarchetypes")

tar_option_set(packages = c("neotoma", "tidyverse"))


# source target plans
source("neotoma_download_plan.R")
source("cleaning_plan.R")
source("analysis_plan.R")
source("manuscript_plan.R")


# Combine target plans
c(
  neotoma_download_plan,
  cleaning_plan,
  analysis_plan,
  manuscript_plan
  )
