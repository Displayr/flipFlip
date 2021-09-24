# This code was copied from tidyverse
# The list of packages is stored in listpackages.R

packages_unloaded <- function(attach = FALSE)
{
    pkg_list <- if (attach) attach_list else load_list
    search <- paste0("package:", pkg_list)
    return(pkg_list[!search %in% search()])
}

attach_flip <- function()
{
    to_load <- packages_unloaded(FALSE)
    to_attach <- packages_unloaded(TRUE)
    if (length(to_load) == 0)
      return(invisible())

    successes <- suppressWarnings(suppressPackageStartupMessages(
        vapply(to_load, requireNamespace, FALSE, quietly = TRUE)
    ))
    successes <- c(successes, suppressWarnings(suppressPackageStartupMessages(
        vapply(to_attach, require, FALSE, quietly = TRUE, character.only = TRUE)
    )))

    if (any(!successes))
    {
        unavailable_pkgs <- paste(names(successes)[!successes], collapse = ", ")
        msg <- paste0("The following flip packages are not installed and were not loaded: ",
                      unavailable_pkgs, ".")
        warning(msg, call. = FALSE)
    }

    invisible()
}
