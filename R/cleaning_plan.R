# try to make as few targets as possible as each target is cached.
# With many intermediate steps, it uses a lot of disk space.

cleaning_plan <- list(
  # convert to tibble
  tar_target(
    name = pollen_data,
    command = raw_pollen_data %>%
      as_tibble() %>%
      #remove algal etc counts
      mutate(data = map(data, ~filter(.x, variable.element %in% c("pollen", "spore", "pollen/spore"))))
  )
  # ?remove samples with low countsums
  # ?taxonomic harmonisation - join to harmonisation table
  # ?removes sites with insufficient chronology control

)
