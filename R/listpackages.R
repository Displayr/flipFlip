flip_list <- c("flipU", "flipTime", "flipTransformations", "verbs", "flipTables", "flipStatistics",
               "flipImputation", "flipData", "flipChartBasics", "flipAPI",
               "flipPictographs", "flipStandardCharts", "flipPlots", "flipChart",
               "flipDashboard", "flipDimensionReduction", "flipRegression", "flipStartup",
               "flipTrees", "flipAnalysisOfVariance", "flipQualtrics", "flipMultivariates",
               "flipCluster", "flipTURF")
attach_list <- c("flipU", "lubridate", "flipTime", "flipTransformations",
                    "flipChart", "verbs")
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
