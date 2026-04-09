test = list(
  name = "q4d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        question.correct <- isTRUE(all.equal(
          white_victim_multivariate_reg,
          summary(lm(death ~ wv + ac + fv + vs + v2 + ms + yv, data = death_data))
        ))
        testthat::expect_true(
          question.correct,
          info = "Use summary(lm(death ~ wv + ac + fv + vs + v2 + ms + yv, data = death_data))."
        )

      }
    )
  )
)