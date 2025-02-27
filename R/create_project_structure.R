#' @title Create Project Structure
#' @description Generates the required folder structure for an R project.
#' @details This function creates the necessary directories such as `functions`, `scripts`, `tests`, `outputs`, `config`, and `report`.
#' @param project_path The path where the project structure should be created.
#' @return No return value, creates directories.
#' @export
create_project_structure <- function(project_path) {
  folders <- c("functions", "data", "models", "scripts", "tests", "outputs", "config", "report")
  sapply(file.path(project_path, folders), dir.create, recursive = TRUE)
}
