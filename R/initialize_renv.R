#' @title Initialize renv
#' @description Sets up the renv package manager inside the project directory and installs essential packages.
#' @details This function initializes renv in the specified project folder and installs common R packages.
#' @param project_path The path to the project directory where renv should be initialized.
#' @return No return value, initializes renv.
#' @import renv
#' @export
initialize_renv <- function(project_path) {
  # Change working directory temporarily to ensure renv is set up correctly
  old_wd <- getwd()
  setwd(project_path)

  # Initialize renv inside the specified project folder
  renv::init(bare = TRUE)

  # Install common packages
  renv::install(c("data.table",
                  "dplyr",
                  "ggplot2",
                  "lubridate",
                  "here",
                  "yaml",
                  "waldo"))

  # Snapshot the installed packages
  renv::snapshot()

  # Restore original working directory
  setwd(old_wd)
}
