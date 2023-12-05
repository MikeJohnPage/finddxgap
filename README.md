
<!-- README.md is generated from README.Rmd. Please edit that file -->

# finddxgap <img src='man/figures/logo.png' align="right" height="150" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/MikeJohnPage/finddxgap/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/MikeJohnPage/finddxgap/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Overview

finddxgap provides functions to calculate and model a diagnostic gap.

## Installation

``` r
# Install the development version from GitHub:
# install.packages("pak")
pak::pak("mikejohnpage/finddxgap")
```

## Usage

``` r
library(finddxgap)

# Compute a diagnostic gap
cases <- data.frame(
  estimated = c(100, 80, 100),
  notified = c(10, 60, 70)
)

dxgap(cases, estimated, notified)
#>   estimated notified dxgap
#> 1       100       10    90
#> 2        80       60    25
#> 3       100       70    30
```

## Contributing

To contribute to this project, please follow [GitHub
Flow](https://guides.github.com/introduction/flow/) when submitting
changes.

> Please note that this project is released with a Contributor Code of
> Conduct. By participating in this project you agree to abide by its
> terms.

## Credits

See [LICENSE](/LICENSE)
