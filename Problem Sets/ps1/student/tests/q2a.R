test = list(
  name = "q2a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test = list(
          name = "q2a",
          cases = list(
            ottr::TestCase$new(
              hidden = FALSE,
              name = NA,
              points = 1.0,
              code = {
                question.correct <- isTRUE(all.equal(head_plot, head(ca_data)))
                testthat::expect_true(question.correct,
                    info = "It doesn't look like you used head() on the ca_data dataset.")
              }
            )
          )
        )
      }
    )
  )
)