climate_periods <- tibble::tibble(
  climate_period = factor(
    1:5,
    levels = 1:5,
    ordered = TRUE
  ),
  start_year = c(
    1901,
    1931,
    1961,
    1991,
    2021
  )
)
