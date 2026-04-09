test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- isTRUE(all.equal(black_defendants, sum(death_data$bd == 1)))
        testthat::expect_true(
          question.correct,
          info = "Use sum(death_data$bd == 1). Remember: no quotes around the 1."
        )

      }
    )
  )
)