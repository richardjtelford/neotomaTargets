#
analysis_plan <- list(
  # do something interesting
  # calculate count sums
  tar_target(
    name = count_sums,
    command = pollen_data %>%
      mutate(countsum = map(data, ~summarise(.x, sum = sum(count)))) %>%
      select(-data) %>% #remove data to reduce size of object
      unnest(cols = countsum)
    ),

    #summarise count sums
    tar_target(
      name = count_summary,
      command = count_sums %>%
        ungroup() %>%
        summarise(n = n(), mn = min(sum), mx = max(sum))
    )
)
