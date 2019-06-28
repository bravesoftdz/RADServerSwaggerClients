# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EdgeModuleAddObject Class
#'
#' @field modulename 
#' @field protocol 
#' @field protocolprops 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EdgeModuleAddObject <- R6::R6Class(
  'EdgeModuleAddObject',
  public = list(
    `modulename` = NULL,
    `protocol` = NULL,
    `protocolprops` = NULL,
    initialize = function(`modulename`, `protocol`, `protocolprops`){
      if (!missing(`modulename`)) {
        stopifnot(is.character(`modulename`), length(`modulename`) == 1)
        self$`modulename` <- `modulename`
      }
      if (!missing(`protocol`)) {
        stopifnot(is.character(`protocol`), length(`protocol`) == 1)
        self$`protocol` <- `protocol`
      }
      if (!missing(`protocolprops`)) {
        stopifnot(is.character(`protocolprops`), length(`protocolprops`) == 1)
        self$`protocolprops` <- `protocolprops`
      }
    },
    toJSON = function() {
      EdgeModuleAddObjectObject <- list()
      if (!is.null(self$`modulename`)) {
        EdgeModuleAddObjectObject[['modulename']] <- self$`modulename`
      }
      if (!is.null(self$`protocol`)) {
        EdgeModuleAddObjectObject[['protocol']] <- self$`protocol`
      }
      if (!is.null(self$`protocolprops`)) {
        EdgeModuleAddObjectObject[['protocolprops']] <- self$`protocolprops`
      }

      EdgeModuleAddObjectObject
    },
    fromJSON = function(EdgeModuleAddObjectJson) {
      EdgeModuleAddObjectObject <- jsonlite::fromJSON(EdgeModuleAddObjectJson)
      if (!is.null(EdgeModuleAddObjectObject$`modulename`)) {
        self$`modulename` <- EdgeModuleAddObjectObject$`modulename`
      }
      if (!is.null(EdgeModuleAddObjectObject$`protocol`)) {
        self$`protocol` <- EdgeModuleAddObjectObject$`protocol`
      }
      if (!is.null(EdgeModuleAddObjectObject$`protocolprops`)) {
        self$`protocolprops` <- EdgeModuleAddObjectObject$`protocolprops`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modulename": %s,
           "protocol": %s,
           "protocolprops": %s
        }',
        self$`modulename`,
        self$`protocol`,
        self$`protocolprops`
      )
    },
    fromJSONString = function(EdgeModuleAddObjectJson) {
      EdgeModuleAddObjectObject <- jsonlite::fromJSON(EdgeModuleAddObjectJson)
      self$`modulename` <- EdgeModuleAddObjectObject$`modulename`
      self$`protocol` <- EdgeModuleAddObjectObject$`protocol`
      self$`protocolprops` <- EdgeModuleAddObjectObject$`protocolprops`
    }
  )
)