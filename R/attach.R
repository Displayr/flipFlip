# This code was copied from tidyverse
# The list of packages is stored in listpackages.R

packages_unloaded <- function()
{
  search <- paste0("package:", flip_list)
  flip_list[!search %in% search()]
}

attach_flip <- function()
{
  to_load <- packages_unloaded()
  if (length(to_load) == 0)
    return(invisible())

  suppressPackageStartupMessages(
    lapply(to_load, library, character.only = TRUE, warn.conflicts = TRUE)
  )

  invisible()
}
