/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
package io.swagger.client.api

import io.swagger.client.core._
import io.swagger.client.core.CollectionFormats._
import io.swagger.client.core.ApiKeyLocations._

object ApiDocApi {

  /**
   *  |      Used to retrieve all the API EndPoints.
   * 
   * Expected answers:
   *   code 200 :  (OK)
   * 
   * @param xEmbarcaderoApplicationId 
   * @param xEmbarcaderoAppSecret 
   * @param xEmbarcaderoMasterSecret 
   */
  def aPI(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, "http://localhost:8080", "/api", "application/json")
      .withHeaderParam("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
      .withHeaderParam("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
      .withHeaderParam("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)
      .withSuccessResponse[Unit](200)
        /**
   * Get API in JSON format
   * 
   * Expected answers:
   *   code 200 :  (OK)
   * 
   * @param xEmbarcaderoApplicationId 
   * @param xEmbarcaderoAppSecret 
   * @param xEmbarcaderoMasterSecret 
   */
  def getAPIJSONFormat(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, "http://localhost:8080", "/api/apidoc.json", "application/json")
      .withHeaderParam("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
      .withHeaderParam("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
      .withHeaderParam("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)
      .withSuccessResponse[Unit](200)
        /**
   * Get API in YAML format
   * 
   * Expected answers:
   *   code 200 :  (OK)
   * 
   * @param xEmbarcaderoApplicationId 
   * @param xEmbarcaderoAppSecret 
   * @param xEmbarcaderoMasterSecret 
   */
  def getAPIYAMLFormat(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, "http://localhost:8080", "/api/apidoc.yaml", "application/json")
      .withHeaderParam("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
      .withHeaderParam("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
      .withHeaderParam("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)
      .withSuccessResponse[Unit](200)
        /**
   *  |      Used to retrieve an EndPoint for the API EndPoints.
   * 
   * Expected answers:
   *   code 200 :  (OK)
   * 
   * @param item Path Segment to an EndPoint
   * @param xEmbarcaderoApplicationId 
   * @param xEmbarcaderoAppSecret 
   * @param xEmbarcaderoMasterSecret 
   */
  def getAPIYAMLFormat EndPoint(item: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, "http://localhost:8080", "/api/{item}/apidoc.yaml", "application/json")
      .withPathParam("item", item)
      .withHeaderParam("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
      .withHeaderParam("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
      .withHeaderParam("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)
      .withSuccessResponse[Unit](200)
      

}
