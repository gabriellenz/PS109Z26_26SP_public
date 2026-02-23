test = list(
  name = "q1b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        question.correct <- FALSE
        correct.subset <- subset(national_data,
          series == "state_prison" | series == "federal_prison")
        correct.plot <- qplot(
          year,
          value,
          color = series,
          data = correct.subset,
          geom = "line"
        )
        try({
          question.correct <- isTRUE(all.equal(correct.plot$data, incarceration_plot$data)) &&
            isTRUE(all.equal(correct.plot$mapping[["x"]], incarceration_plot$mapping[["x"]])) &&
            isTRUE(all.equal(correct.plot$mapping[["y"]], incarceration_plot$mapping[["y"]])) &&
            isTRUE(all.equal(correct.plot$mapping[["colour"]], incarceration_plot$mapping[["colour"]])) &&
            length(incarceration_plot$layers) > 0 &&
            inherits(incarceration_plot$layers[[1]]$geom, "GeomLine")
        }, silent = TRUE)
        testthat::expect_true(question.correct, info = "Try again...")

      }
    )
  )
)