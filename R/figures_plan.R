figures_plan <- list(
  # site map
  tar_target(
    name = site_map,
    command = {
      base_map <- rnaturalearth::ne_countries(
        scale = 50,
        country = c("Norway", "Sweden", "Finland", "Denmark", "Estonia", "Latvia", "Russia"),
        returnclass = "sf")

      sites_sf <- pollen_sites %>% map_dfr("site.data") %>%
        sf::st_as_sf(coords = c("long", "lat"), crs = 4326)

      ggplot(base_map) +
        geom_sf(colour = "grey50") +
        geom_sf(data = sites_sf, aes(colour = elev)) +
        scale_colour_viridis_c(option = "A") +
        coord_sf(xlim = c(5, 30.5), ylim = c(58, 72)) +
        labs(colour = "Elevation m")


    }),

  # count sum plot
  tar_target(
    name = count_plot,
    command = ggplot(count_sums, aes(x = sum)) +
      geom_histogram() +
      labs(x = "Pollen Count")
  )


)
