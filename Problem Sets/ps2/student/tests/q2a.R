test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- isTRUE(all.equal(defendant_race_dim, difference_in_means(death ~ bd, data = death_data)))
        testthat::expect_true(
          question.correct,
          info = "Use difference_in_means(death ~ bd, data = death_data)."
        )

      }
    )
  )
)