test = list(
  name = "q4b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        question.correct <- isTRUE(all.equal(white_victim_bivariate_reg, summary(lm(death ~ wv, data = death_data))))
        testthat::expect_true(
          question.correct,
          info = "Use summary(lm(death ~ wv, data = death_data))."
        )

      }
    )
  )
)