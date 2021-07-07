library("targets")


# make the targets that are out of date
# looks for a file called "_targets.R" in the working directory
tar_make()

# view pipeline and show which targets are out of date
tar_visnetwork()

fs::file_show("manuscript/manuscript.pdf")#display pdf
