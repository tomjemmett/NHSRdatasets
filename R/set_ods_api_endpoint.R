#' Change the default ODS API endpoint
#'
#' The ODS functions in this package will send API queries to
#' *https://directory.spineservices.nhs.uk/ORD/2-0-0/*. This function can change
#' the URL if required. Note: Compatability with newer versions of the API
#' cannot be garanteed.
#'
#' @param endpoint_url The new URL of the API endpoint. E.g. "https://directory.spineservices.nhs.uk/ORD/2-0-0/"
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' set_ods_api_endpoint("https://directory.spineservices.nhs.uk/ORD/2-0-1/")
#' }
set_ods_api_endpoint <- function(endpoint_url){
  if(length(endpoint_url) != 1){
    stop("endpoint_url argument must be of length 1")
  }
  if (!is.character(endpoint_url)) {
    stop ("endpoint_url argument must be of type character")
  }
  options("ODS_API_ENDPOINT" = endpoint_url)
  message(paste("ODS API endpoint set to", getOption("ODS_API_ENDPOINT")))
}

# Set the default end point here.

set_ods_api_endpoint("https://directory.spineservices.nhs.uk/ORD/2-0-0/")
