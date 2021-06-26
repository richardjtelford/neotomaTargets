#
manuscript_plan <- list(

  # bibliography
  tar_target(
    name = bibliography,
    command = "manuscript/mybibfile.bib",
    format = "file"
  ),

  # add packages to bibliography
  tar_target(
    name = biblio2,
    command = rjt.misc::package_citations(
        packages = c("targets", "tidyverse", "neotoma", "rmarkdown"),
        old_bib = bibliography,
        new_bib = "manuscript/mybibfile2.bib"),
    format = "file"
    ),

  #render manuscript
  tar_render(name = ms, path = "manuscript/manuscript.Rmd")


)
