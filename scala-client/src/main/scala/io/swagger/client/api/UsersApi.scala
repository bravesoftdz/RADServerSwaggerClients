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

import java.text.SimpleDateFormat

import io.swagger.client.model.FieldObject
import io.swagger.client.model.GroupName
import io.swagger.client.model.Number
import io.swagger.client.model.UpdateObject
import io.swagger.client.model.UpdatedObject
import io.swagger.client.model.UserCredentialsObject
import io.swagger.client.model.UserObject
import io.swagger.client.model.UserSignUpResponseObject
import io.swagger.client.model.UserTokenObject
import io.swagger.client.model.UseridObject
import io.swagger.client.{ApiInvoker, ApiException}

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date
import java.util.TimeZone

import scala.collection.mutable.HashMap

import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

import java.net.URI

import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{Failure, Success, Try}

import org.json4s._

class UsersApi(
  val defBasePath: String = "http://localhost:8080",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new UsersApiAsyncHelper(client, config)

  /**
   * Add User
   *  |      Used to add a new &#x60;User&#x60; object to the EMS database.
   *
   * @param body Object to add a new EMS User in the EMS Server 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return UseridObject
   */
  def addUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[UseridObject] = {
    val await = Try(Await.result(addUserAsync(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Add User asynchronously
   *  |      Used to add a new &#x60;User&#x60; object to the EMS database.
   *
   * @param body Object to add a new EMS User in the EMS Server 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(UseridObject)
   */
  def addUserAsync(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[UseridObject] = {
      helper.addUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Delete User
   *  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def deleteUser(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(deleteUserAsync(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Delete User asynchronously
   *  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def deleteUserAsync(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.deleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Get User
   *  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return UserObject
   */
  def getUser(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[UserObject] = {
    val await = Try(Await.result(getUserAsync(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get User asynchronously
   *  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(UserObject)
   */
  def getUserAsync(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[UserObject] = {
      helper.getUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Get Fields
   *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return List[FieldObject]
   */
  def getUserFields(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[List[FieldObject]] = {
    val await = Try(Await.result(getUserFieldsAsync(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get Fields asynchronously
   *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(List[FieldObject])
   */
  def getUserFieldsAsync(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[List[FieldObject]] = {
      helper.getUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Get User Groups
   *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return List[GroupName]
   */
  def getUserGroups(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[List[GroupName]] = {
    val await = Try(Await.result(getUserGroupsAsync(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get User Groups asynchronously
   *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(List[GroupName])
   */
  def getUserGroupsAsync(id: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[List[GroupName]] = {
      helper.getUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Get Users
   *  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @param skip users skipped (optional)
   * @param limit maximum number of results to return (optional)
   * @param order order ascending or descending (asc, desc) (optional)
   * @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
   * @return List[UserObject]
   */
  def getUsers(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None, skip: Option[Number] = None, limit: Option[Number] = None, order: Option[Number] = None, where: Option[String] = None): Option[List[UserObject]] = {
    val await = Try(Await.result(getUsersAsync(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get Users asynchronously
   *  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @param skip users skipped (optional)
   * @param limit maximum number of results to return (optional)
   * @param order order ascending or descending (asc, desc) (optional)
   * @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
   * @return Future(List[UserObject])
   */
  def getUsersAsync(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None, skip: Option[Number] = None, limit: Option[Number] = None, order: Option[Number] = None, where: Option[String] = None): Future[List[UserObject]] = {
      helper.getUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where)
  }

  /**
   * Log In
   *  |      Logs in to the EMS Server with a specific EMS User.
   *
   * @param body A user object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return UserTokenObject
   */
  def loginUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[UserTokenObject] = {
    val await = Try(Await.result(loginUserAsync(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Log In asynchronously
   *  |      Logs in to the EMS Server with a specific EMS User.
   *
   * @param body A user object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(UserTokenObject)
   */
  def loginUserAsync(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[UserTokenObject] = {
      helper.loginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * sPostLogoutSummaryTitle
   * sPostLogoutSummaryDesc
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def logoutUser(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(logoutUserAsync(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * sPostLogoutSummaryTitle asynchronously
   * sPostLogoutSummaryDesc
   *
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def logoutUserAsync(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.logoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Sign Up  User
   *  |      Signs up to the EMS Server with an appropriate EMS User.
   *
   * @param body Object to sign up a new EMS User in the EMS Server 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return UserSignUpResponseObject
   */
  def signupUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[UserSignUpResponseObject] = {
    val await = Try(Await.result(signupUserAsync(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Sign Up  User asynchronously
   *  |      Signs up to the EMS Server with an appropriate EMS User.
   *
   * @param body Object to sign up a new EMS User in the EMS Server 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(UserSignUpResponseObject)
   */
  def signupUserAsync(body: UserCredentialsObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[UserSignUpResponseObject] = {
      helper.signupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Update User
   *  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param body Add any fieldName 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return UpdatedObject
   */
  def updateUser(id: String, body: UpdateObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Option[UpdatedObject] = {
    val await = Try(Await.result(updateUserAsync(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Update User asynchronously
   *  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
   *
   * @param id A user ID 
   * @param body Add any fieldName 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(UpdatedObject)
   */
  def updateUserAsync(id: String, body: UpdateObject, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): Future[UpdatedObject] = {
      helper.updateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

}

class UsersApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def addUser(body: UserCredentialsObject,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[UseridObject], writer: RequestWriter[UserCredentialsObject]): Future[UseridObject] = {
    // create path and map variables
    val path = (addFmt("/users"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling UsersApi->addUser")
    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def deleteUser(id: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/users/{id}")
      replaceAll("\\{" + "id" + "\\}", id.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (id == null) throw new Exception("Missing required parameter 'id' when calling UsersApi->deleteUser")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("DELETE", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUser(id: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[UserObject]): Future[UserObject] = {
    // create path and map variables
    val path = (addFmt("/users/{id}")
      replaceAll("\\{" + "id" + "\\}", id.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (id == null) throw new Exception("Missing required parameter 'id' when calling UsersApi->getUser")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUserFields(xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[List[FieldObject]]): Future[List[FieldObject]] = {
    // create path and map variables
    val path = (addFmt("/users/fields"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUserGroups(id: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[List[GroupName]]): Future[List[GroupName]] = {
    // create path and map variables
    val path = (addFmt("/users/{id}/groups")
      replaceAll("\\{" + "id" + "\\}", id.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (id == null) throw new Exception("Missing required parameter 'id' when calling UsersApi->getUserGroups")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUsers(xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None,
    skip: Option[Number] = None,
    limit: Option[Number] = None,
    order: Option[Number] = None,
    where: Option[String] = None
    )(implicit reader: ClientResponseReader[List[UserObject]]): Future[List[UserObject]] = {
    // create path and map variables
    val path = (addFmt("/users"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    skip match {
      case Some(param) => queryParams += "skip" -> param.toString
      case _ => queryParams
    }
    limit match {
      case Some(param) => queryParams += "limit" -> param.toString
      case _ => queryParams
    }
    order match {
      case Some(param) => queryParams += "order" -> param.toString
      case _ => queryParams
    }
    where match {
      case Some(param) => queryParams += "where" -> param.toString
      case _ => queryParams
    }
    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def loginUser(body: UserCredentialsObject,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[UserTokenObject], writer: RequestWriter[UserCredentialsObject]): Future[UserTokenObject] = {
    // create path and map variables
    val path = (addFmt("/users/login"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling UsersApi->loginUser")
    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def logoutUser(xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/users/logout"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def signupUser(body: UserCredentialsObject,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[UserSignUpResponseObject], writer: RequestWriter[UserCredentialsObject]): Future[UserSignUpResponseObject] = {
    // create path and map variables
    val path = (addFmt("/users/signup"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (body == null) throw new Exception("Missing required parameter 'body' when calling UsersApi->signupUser")
    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def updateUser(id: String,
    body: UpdateObject,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[UpdatedObject], writer: RequestWriter[UpdateObject]): Future[UpdatedObject] = {
    // create path and map variables
    val path = (addFmt("/users/{id}")
      replaceAll("\\{" + "id" + "\\}", id.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (id == null) throw new Exception("Missing required parameter 'id' when calling UsersApi->updateUser")

    if (body == null) throw new Exception("Missing required parameter 'body' when calling UsersApi->updateUser")
    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("PUT", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}