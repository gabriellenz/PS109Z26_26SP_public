test = list(
  name = "q4f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical(wv_significant, TRUE) | tolower(wv_significant) == "true"
        testthat::expect_true(
          question.correct,
          info = "Check whether the p-value for wv is below 0.05."
        )

      }
    )
  )
)