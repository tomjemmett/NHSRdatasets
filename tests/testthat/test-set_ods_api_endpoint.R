# test_that("the endpoint_url has been set", {
#   expect_equal(getOption("ODS_API_ENDPOINT"), "https://directory.spineservices.nhs.uk/ORD/2-0-0/")
# })

test_that("the endpoint can be changed",{
  set_ods_api_endpoint("test")
  expect_equal(getOption("ODS_API_ENDPOINT"), "test")
  set_ods_api_endpoint("https://directory.spineservices.nhs.uk/ORD/2-0-0/")
})
