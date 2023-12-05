cases <- data.frame(
  estimated = c(100, 80, 100),
  notified = c(10, 60, 70)
)

test_that("dxgap", {
  expect_equal(
    dxgap(cases, estimated, notified)$dxgap,
    c(90, 25, 30)
  )
  expect_true(
    is.numeric(dxgap(cases, estimated, notified)$dxgap)
  )
})
