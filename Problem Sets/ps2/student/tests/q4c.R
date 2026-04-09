test = list(
  name = "q4c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        question.correct <- isTRUE(all.equal(white_victim_bivariate_effect, 37))
        testthat::expect_true(
          question.correct,
          info = "Look at the number in the wv row in your 4b output, convert it to percentage points, round to the nearest whole number, and type in just that number."
        )

      }
    )
  )
)