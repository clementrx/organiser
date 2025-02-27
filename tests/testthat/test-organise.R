library(testthat)
library(organiser)

test_that("organise() creates the correct project structure", {
  temp_dir <- tempfile("test_project")
  dir.create(temp_dir)

  project_name <- "test_project"
  project_path <- file.path(temp_dir, project_name)

  organise(project_name, path = temp_dir)

  # Check if the main project folder is created
  expect_true(dir.exists(project_path))

  # Check if key subdirectories exist
  expected_dirs <- c("functions", "scripts", "tests", "outputs", "config", "report")
  for (d in expected_dirs) {
    expect_true(dir.exists(file.path(project_path, d)))
  }

  # Check if key files exist
  expected_files <- c("install.R", "main.R", "README.md", "config/config.yml", "report/report.qmd")
  for (f in expected_files) {
    expect_true(file.exists(file.path(project_path, f)))
  }

  # Check if renv was initialized properly
  expect_true(file.exists(file.path(project_path, "renv.lock")))
  expect_true(dir.exists(file.path(project_path, "renv")))

  # Cleanup
  unlink(temp_dir, recursive = TRUE)
})
