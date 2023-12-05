#' Compute the diagnostic gap
#'
#' `dx_gap()` calculates a diagnostic gap defined as the proportion of
#' the population with the condition who are undiagnosed.
#'
#' @section Calculation:
#'
#'   For each country and year in the data, the diagnostic gap can be computed
#'   as follows:
#'
#'   diagnostic gap = (estimated cases - notified cases) / estimated cases
#'
#'   In other words, we can define the diagnostic gap as the gap between the
#'   estimated number of people who fall ill each year and the number of people
#'   who are officially reported as having been diagnosed. This means that the
#'   diagnostic gap represents people who have the illness but are not
#'   officially diagnosed, due to limitations or challenges in the healthcare
#'   system.
#'
#' @param data A data frame or data frame extension (e.g., a tibble).
#' @param numerator,denominator Names of the columns to use as the numerator and
#'  demoninator. Must be numerics. 
#'
#' @return A dataframe, the same dimensions as the input data, but with one
#'   additional column called `dxgap` containing the computed diagnostic
#'   gap values.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Calculate diagnostic gap for 2019 TB data:
#' build_tbl("tb", 2019, vars = dxgap_const$tb_vars) |>
#'   compute_dx_gap()
#' }
dxgap <- function(data, numerator, denominator) {
  stopifnot(is.data.frame(data))

  dplyr::mutate(
    data,
    dxgap = ({{ numerator }} - {{ denominator }}) / {{ numerator }} * 100
  )
}
