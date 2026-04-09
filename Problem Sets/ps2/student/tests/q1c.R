test = list(
  name = "q1c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- isTRUE(all.equal(death_correlations, cor(death_data)))
        testthat::expect_true(
          question.correct,
          info = "Use cor(death_data) and save the result as death_correlations."
        )

      }
    )
  )
)