#' @title Create Example Files
#' @description Generates template files within the newly created R project.
#' @details This function populates example files such as `install.R`, `main.R`, example functions, scripts, and a Quarto report.
#' @param project_path The path to the project directory.
#' @return No return value, writes files to disk.
#' @export
create_example_files <- function(project_path) {
  files <- list(
    "install.R" = "# Install required packages using renv\nrenv::restore()\n",
    "main.R" = "# Load packages\nlibrary(renv)\nrenv::activate()\n\n# Load custom functions\nsapply(list.files('functions', full.names = TRUE), source)\n",
    "functions/example_function.R" = "# Example function\nexample_function <- function() {\n  print('Hello, world!')\n}\n",
    "scripts/example_script.R" = "# Example script\nexample_function()\n",
    "tests/test_example.R" = "# Example test\nif (example_function() != 'Hello, world!') {\n  stop('Test failed')\n}\n",
    "config/config.yml" = "# Project configuration\nparam1: value1\nparam2: value2\n",
    "report/report.qmd" = "---\ntitle: \"Project Report\"\nauthor: \"Your Name\"\ndate: \"`r Sys.Date()`\"\nformat: html\n---\n\n# Introduction\n\nThis is a Quarto-generated report.\n"
  )

  for (file in names(files)) {
    writeLines(files[[file]], file.path(project_path, file))
  }
}
