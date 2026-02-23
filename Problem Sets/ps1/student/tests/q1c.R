test = list(
  name = "q1c",
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
          color = series,
          data = national_data,
          geom = "line"
        )
        try({
          question.correct <- isTRUE(all.equal(correct.plot$data, overlay_plot$data)) &&
            isTRUE(all.equal(correct.plot$mapping[["x"]], overlay_plot$mapping[["x"]])) &&
            isTRUE(all.equal(correct.plot$mapping[["y"]], overlay_plot$mapping[["y"]])) &&
            isTRUE(all.equal(correct.plot$mapping[["colour"]], overlay_plot$mapping[["colour"]])) &&
            length(overlay_plot$layers) > 0 &&
            inherits(overlay_plot$layers[[1]]$geom, "GeomLine")
        }, silent = TRUE)
        testthat::expect_true(question.correct, info = "Try again...")

      }
    )
  )
)