#' @title Add README to Project
#' @description Copies a README template to the specified project directory and customizes it.
#' @param project_path The path to the project directory.
#' @param project_title The title of the project.
#' @param project_description A brief description of the project.
#' @return None. The function writes a README.md file to the project directory.
#' @export
add_readme <- function(project_path, project_title, project_description) {

  if (!dir.exists(project_path)) {
    stop("The specified project path does not exist: ", project_path)
  }

  template_path <- system.file("templates", "BLANK_README.md", package = "organiser")

  if (template_path == "") {
    stop("Template file BLANK_README.md not found in the organiser package.")
  }

  readme_content <- readLines(template_path)

  readme_content <- gsub("project_title", project_title, readme_content)
  readme_content <- gsub("project_description", project_description, readme_content)

  readme_path <- file.path(project_path, "README.md")

  writeLines(readme_content, readme_path)
}


