flip_list <- c("flipU", "flipTime", "flipTransformations", "verbs", "flipTables", "flipStatistics",
               "flipImputation", "flipData", "flipChartBasics", "flipAPI",
               "flipPictographs", "flipStandardCharts", "flipPlots", "flipChart",
               "flipDashboard", "flipDimensionReduction", "flipRegression", "flipStartup",
               "flipTrees", "flipAnalysisOfVariance", "flipQualtrics", "flipMultivariates",
               "flipCluster", "flipTURF")
# In the attach list all the package's exported symbols onto the search path (visible in search()).
# i.e. flipFunction works without the flipPackage::flipFunction prefix
attach_list <- c("flipU", "lubridate", "flipTime", "flipTransformations", "flipAPI",
                 "flipTables", "flipChart", "verbs")
# The load list reads the package namespace into memory, but does not attach it to the search path.
# This means that the package's functions can be called using the flipPackage::flipFunction form
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
