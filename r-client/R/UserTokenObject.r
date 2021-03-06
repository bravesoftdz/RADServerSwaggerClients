# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UserTokenObject Class
#'
#' @field id 
#' @field username 
#' @field _meta 
#' @field sessiontoken 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserTokenObject <- R6::R6Class(
  'UserTokenObject',
  public = list(
    `id` = NULL,
    `username` = NULL,
    `_meta` = NULL,
    `sessiontoken` = NULL,
    initialize = function(`id`, `username`, `_meta`, `sessiontoken`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`_meta`)) {
        stopifnot(R6::is.R6(`_meta`))
        self$`_meta` <- `_meta`
      }
      if (!missing(`sessiontoken`)) {
        stopifnot(is.character(`sessiontoken`), length(`sessiontoken`) == 1)
        self$`sessiontoken` <- `sessiontoken`
      }
    },
    toJSON = function() {
      UserTokenObjectObject <- list()
      if (!is.null(self$`id`)) {
        UserTokenObjectObject[['id']] <- self$`id`
      }
      if (!is.null(self$`username`)) {
        UserTokenObjectObject[['username']] <- self$`username`
      }
      if (!is.null(self$`_meta`)) {
        UserTokenObjectObject[['_meta']] <- self$`_meta`$toJSON()
      }
      if (!is.null(self$`sessiontoken`)) {
        UserTokenObjectObject[['sessiontoken']] <- self$`sessiontoken`
      }

      UserTokenObjectObject
    },
    fromJSON = function(UserTokenObjectJson) {
      UserTokenObjectObject <- jsonlite::fromJSON(UserTokenObjectJson)
      if (!is.null(UserTokenObjectObject$`id`)) {
        self$`id` <- UserTokenObjectObject$`id`
      }
      if (!is.null(UserTokenObjectObject$`username`)) {
        self$`username` <- UserTokenObjectObject$`username`
      }
      if (!is.null(UserTokenObjectObject$`_meta`)) {
        _metaObject <- MetaObject$new()
        _metaObject$fromJSON(jsonlite::toJSON(UserTokenObjectObject$_meta, auto_unbox = TRUE))
        self$`_meta` <- _metaObject
      }
      if (!is.null(UserTokenObjectObject$`sessiontoken`)) {
        self$`sessiontoken` <- UserTokenObjectObject$`sessiontoken`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "username": %s,
           "_meta": %s,
           "sessiontoken": %s
        }',
        self$`id`,
        self$`username`,
        self$`_meta`$toJSON(),
        self$`sessiontoken`
      )
    },
    fromJSONString = function(UserTokenObjectJson) {
      UserTokenObjectObject <- jsonlite::fromJSON(UserTokenObjectJson)
      self$`id` <- UserTokenObjectObject$`id`
      self$`username` <- UserTokenObjectObject$`username`
      MetaObjectObject <- MetaObject$new()
      self$`_meta` <- MetaObjectObject$fromJSON(jsonlite::toJSON(UserTokenObjectObject$_meta, auto_unbox = TRUE))
      self$`sessiontoken` <- UserTokenObjectObject$`sessiontoken`
    }
  )
)
