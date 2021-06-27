#

neotoma_download_plan <- list(
  #select datasets to download
  #get dataset list
  tar_target(
    name = pollen_sites,
    command = get_dataset(datasettype = "pollen", gpid = "Norway")
    ),

  #download_data - slow. Uses dynamic branching
  tar_target(
    name = raw_pollen_data,
    command =  pollen_sites %>% get_download(),
    pattern = map(pollen_sites)
  )
)
