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

  successes <- suppressWarnings(suppressPackageStartupMessages(
    vapply(to_load, requireNamespace, FALSE, quietly = TRUE)
  ))
  if (any(!successes))
  {
      unavailable_pkgs <- paste(names(successes)[!successes], collapse = ", ")
      msg <- paste0("The following flip packages are not installed and were not load: ",
                    unavailable_pkgs, ".")
      warning(msg, call. = FALSE)
  }

  invisible()
}
