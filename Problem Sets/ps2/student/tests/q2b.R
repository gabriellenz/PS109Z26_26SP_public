test = list(
  name = "q2b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        question.correct <- isTRUE(all.equal(black_defendant_effect_pct, -12))
        testthat::expect_true(
          question.correct,
          info = "Look at the main difference in your 2a output, multiply it by 100, round to the nearest whole number, and type in just that number."
        )

      }
    )
  )
)