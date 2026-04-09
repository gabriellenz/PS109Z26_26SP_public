test = list(
  name = "q2c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- isTRUE(all.equal(black_defendant_ci_high_pct, 8))
        testthat::expect_true(
          question.correct,
          info = "Look at the top of the 95% confidence interval in your 2a output, multiply it by 100, round to the nearest whole number, and type in just that number."
        )

      }
    )
  )
)