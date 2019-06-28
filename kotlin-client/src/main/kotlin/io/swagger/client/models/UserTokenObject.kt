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
package io.swagger.client.models

import io.swagger.client.models.MetaObject

/**
 * 
 * @param id 
 * @param username 
 * @param _meta 
 * @param sessiontoken 
 */
data class UserTokenObject (
    val id: kotlin.String,
    val username: kotlin.String,
    val _meta: MetaObject,
    val sessiontoken: kotlin.String
) {

}
