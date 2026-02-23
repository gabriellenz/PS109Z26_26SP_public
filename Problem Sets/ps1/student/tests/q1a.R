test = list(
  name = "q1a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.0,
      code = {
        test = list(
          name = "q1a",
          cases = list(
            ottr::TestCase$new(
              hidden = FALSE,
              name = NA,
              points = 2.0,
              code = {
                correct <- subset(national_data, series == "state_prison" | series == "federal_prison")
                question.correct <- isTRUE(all.equal(prison_subset, correct))
                testthat::expect_true(question.correct,
                    info = "prison_subset should include only state_prison and federal_prison rows.")
              }
            )
          )
        )
      }
    )
  )
)