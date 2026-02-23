test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3.0,
      code = {
        test = list(
            name = "q2b",
            cases = list(
              ottr::TestCase$new(
                hidden = FALSE,
                name = NA,
                points = 3.0,
                code = {
                  question.correct <- FALSE
                  correct.plot <- qplot(
                    year,
                    value,
                    color = measure,
                    data = ca_data,
                    geom = "point"
                  ) +
                    facet_wrap(~ county_name) +
                    scale_y_log10()
                  try({
                    facet.ok <- inherits(california_plot$facet, "FacetWrap") &&
                      "county_name" %in% names(california_plot$facet$params$facets)
                    y.scales <- Filter(function(s) "y" %in% s$aesthetics,
                      california_plot$scales$scales)
                    log.ok <- length(y.scales) > 0 &&
                      !is.null(y.scales[[1]]$trans) &&
                      identical(y.scales[[1]]$trans$name, "log-10")
                    geom.ok <- length(california_plot$layers) > 0 &&
                      inherits(california_plot$layers[[1]]$geom, "GeomPoint")
                    question.correct <- inherits(california_plot, "gg") &&
                      isTRUE(all.equal(correct.plot$data, california_plot$data)) &&
                      isTRUE(all.equal(correct.plot$mapping[['x']],
          california_plot$mapping[['x']])) &&
                      isTRUE(all.equal(correct.plot$mapping[['y']],
          california_plot$mapping[['y']])) &&
                      isTRUE(all.equal(correct.plot$mapping[['colour']],
          california_plot$mapping[['colour']])) &&
                      geom.ok && facet.ok && log.ok
                  }, silent = TRUE)
                  testthat::expect_true(
                    question.correct,
                    info = "Plot should use year on x, value on y, color = measure with
          ca_data, faceted by county_name, and log y-scale."
                  )
                }
              )
            )
          )
      }
    )
  )
)