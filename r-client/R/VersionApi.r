# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Version operations
#' @description swagger.Version
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_version Get version
#'
#' }
#'
#' @export
VersionApi <- R6::R6Class(
  'VersionApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_version = function(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`x_embarcadero_application_id`)) {
        headerParams['X-Embarcadero-Application-Id'] <- `x_embarcadero_application_id`
      }

      if (!missing(`x_embarcadero_app_secret`)) {
        headerParams['X-Embarcadero-App-Secret'] <- `x_embarcadero_app_secret`
      }

      if (!missing(`x_embarcadero_master_secret`)) {
        headerParams['X-Embarcadero-Master-Secret'] <- `x_embarcadero_master_secret`
      }

      urlPath <- "/version"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- VersionObject$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)