# All public Displayr "flip" packages preloaded by flipFlip.
#
# Order matters when two packages export the same name: the last package
# attached wins. `verbs` sits at the end so `verbs::Sum` masks
# `flipStatistics::Sum` (and Mean, Max, Min, etc.).
flip_list <- c(
    "flipAPI",
    "flipAnalysisOfVariance",
    "flipChart",
    "flipChartBasics",
    "flipCluster",
    "flipDashboard",
    "flipData",
    "flipDimensionReduction",
    "flipFormat",
    "flipImputation",
    "flipMultivariates",
    "flipPictographs",
    "flipPlots",
    "flipRegression",
    "flipStandardCharts",
    "flipStartup",
    "flipStatistics",
    "flipTables",
    "flipTime",
    "flipTransformations",
    "flipTrees",
    "flipU",
    "verbs"
)
# In the attach list all the package's exported symbols onto the search path (visible in search()).
# i.e. flipFunction works without the flipPackage::flipFunction prefix
attach_list <- c("lubridate", flip_list)
# The load list reads the package namespace into memory, but does not attach it to the search path.
# This means that the package's functions can be called using the flipPackage::flipFunction form

# The load list is packages loaded (namespace only) but not attached; kept as
# a seam so a package can be added without polluting the search path in
# future. Currently empty because every public flip package is attached.
load_list <- setdiff(flip_list, attach_list)

#' List Flip packages
#' This function lists the flip packages that will be loaded
#' @return A character vector of all known flip packages, invisibly.
#' @export
ListFlipPackages <- function()
{
    msg <- paste0("List of Flip packages:", paste(flip_list, collapse = ", "))
    message(msg)
    invisible(flip_list)
}
