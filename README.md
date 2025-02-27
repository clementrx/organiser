
<!-- README.md is generated from README.Rmd. Please edit that file -->

# organiser

[![Codecov test
coverage](https://codecov.io/gh/clementrx/organiser/graph/badge.svg)](https://app.codecov.io/gh/clementrx/organiser)

## Overview

`organiser` is an R package designed to streamline project setup and
management. It provides functions to create a standardized project
structure, manage dependencies, and maintain a reproducible workflow.

### Key Functions

- `organise()` – Creates a structured project directory with predefined
  subfolders.  
- `setup_renv()` – Initializes an **renv** environment for dependency
  management.  
- `add_module()` – Adds modular components for better project
  organization.  
- `load_config()` – Loads configuration settings to maintain
  consistency.  
- `validate_project()` – Ensures the project structure follows best
  practices.

These functions enhance **reproducibility, scalability, and
organization** in R projects. Learn more in `vignette("organiser")`.

## Installation

``` r
library('devtools')
install_github('clementrx/organiser')
```

## Usage

``` r
library(organiser)

organise("my_project")
```

## Getting help

If you encounter a clear bug, questions, please file an issue with a
minimal reproducible example on
[GitHub](https://github.com/clementrx/organiser/issues).
