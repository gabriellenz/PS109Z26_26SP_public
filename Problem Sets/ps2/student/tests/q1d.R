test = list(
  name = "q1d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- isTRUE(all.equal(death_summary, summary(death_data)))
        testthat::expect_true(
          question.correct,
          info = "Use summary(death_data) and save the result as death_summary."
        )

      }
    )
  )
)