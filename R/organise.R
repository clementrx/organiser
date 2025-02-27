#' @title Organise a new R project
#' @description Creates a structured R project with predefined folders, example files, and renv setup.
#' @details This function orchestrates the creation of an R project by calling various helper functions.
#' @param project_name A string specifying the project name.
#' @param path The directory where the project should be created. Default is the current working directory.
#' @return No return value, creates files and directories.
#' @export
#' @examples
#' organise("my_project")
organise <- function(project_name, path = ".", project_title = NULL, project_description = "") {

  # Set defaults for project_title and project_description
  if (is.null(project_title)) {
    project_title <- project_name
  }

  project_path <- file.path(path, project_name)

  if (dir.exists(project_path)) {
    stop("⚠️ The directory already exists.")
  }

  message("📁 Creating project structure...")
  create_project_structure(project_path)

  message("📝 Generating example files...")
  create_example_files(project_path)

  message("📄 Adding README file...")
  add_readme(project_path, project_title, project_description)

  message("📦 Initializing renv and installing required packages...")
  initialize_renv(project_path)

  message("✅ Project '", project_name, "' successfully created at: ", project_path)
}
