library("targets")


# make the targets
tar_make()

# view pipeline
tar_visnetwork()

fs::file_show("manuscript/manuscript.pdf")#display pdf
