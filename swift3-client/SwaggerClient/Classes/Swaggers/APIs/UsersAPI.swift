//
// UsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class UsersAPI: APIBase {
    /**
     Add User
     - parameter body: (body) Object to add a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UseridObject?, _ error: ErrorResponse?) -> Void)) {
        addUserWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add User
     - POST /users
     -  |      Used to add a new `User` object to the EMS database.

     - examples: [{contentType=application/json, example={
  "_id" : "_id"
}}]
     - parameter body: (body) Object to add a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<UseridObject> 
     */
    open class func addUserWithRequestBuilder(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UseridObject> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UseridObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Delete User
     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUser(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteUserWithRequestBuilder(id: id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete User
     - DELETE /users/{id}
     -  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/{id}"
        let idPreEscape = "\(id)"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get User
     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUser(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UserObject?, _ error: ErrorResponse?) -> Void)) {
        getUserWithRequestBuilder(id: id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get User
     - GET /users/{id}
     -  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

     - examples: [{contentType=application/json, example={
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "id" : "id",
  "username" : "username"
}}]
     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<UserObject> 
     */
    open class func getUserWithRequestBuilder(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UserObject> {
        var path = "/users/{id}"
        let idPreEscape = "\(id)"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Fields
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserFields(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: [FieldObject]?, _ error: ErrorResponse?) -> Void)) {
        getUserFieldsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Fields
     - GET /users/fields
     -  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).

     - examples: [{contentType=application/json, example=[ {
  "custom" : true,
  "name" : "name",
  "fields" : [ {
    "name" : "name"
  }, {
    "name" : "name"
  } ]
}, {
  "custom" : true,
  "name" : "name",
  "fields" : [ {
    "name" : "name"
  }, {
    "name" : "name"
  } ]
} ]}]
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<[FieldObject]> 
     */
    open class func getUserFieldsWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[FieldObject]> {
        let path = "/users/fields"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[FieldObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get User Groups
     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserGroups(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: [GroupName]?, _ error: ErrorResponse?) -> Void)) {
        getUserGroupsWithRequestBuilder(id: id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get User Groups
     - GET /users/{id}/groups
     -  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.

     - examples: [{contentType=application/json, example=[ { }, { } ]}]
     - parameter id: (path) A user ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<[GroupName]> 
     */
    open class func getUserGroupsWithRequestBuilder(id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[GroupName]> {
        var path = "/users/{id}/groups"
        let idPreEscape = "\(id)"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[GroupName]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Users
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsers(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil, completion: @escaping ((_ data: [UserObject]?, _ error: ErrorResponse?) -> Void)) {
        getUsersWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret, skip: skip, limit: limit, order: order, _where: _where).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Users
     - GET /users
     -  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

     - examples: [{contentType=application/json, example=[ {
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "id" : "id",
  "username" : "username"
}, {
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "id" : "id",
  "username" : "username"
} ]}]
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
     - returns: RequestBuilder<[UserObject]> 
     */
    open class func getUsersWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil) -> RequestBuilder<[UserObject]> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "skip": skip,
            "limit": limit,
            "order": order,
            "where": _where
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[UserObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Log In
     - parameter body: (body) A user object 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func loginUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UserTokenObject?, _ error: ErrorResponse?) -> Void)) {
        loginUserWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Log In
     - POST /users/login
     -  |      Logs in to the EMS Server with a specific EMS User.

     - examples: [{contentType=application/json, example={
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "id" : "id",
  "sessiontoken" : "sessiontoken",
  "username" : "username"
}}]
     - parameter body: (body) A user object 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<UserTokenObject> 
     */
    open class func loginUserWithRequestBuilder(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UserTokenObject> {
        let path = "/users/login"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserTokenObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     sPostLogoutSummaryTitle
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func logoutUser(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        logoutUserWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     sPostLogoutSummaryTitle
     - POST /users/logout
     - sPostLogoutSummaryDesc

     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func logoutUserWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        let path = "/users/logout"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Sign Up  User
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func signupUser(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UserSignUpResponseObject?, _ error: ErrorResponse?) -> Void)) {
        signupUserWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sign Up  User
     - POST /users/signup
     -  |      Signs up to the EMS Server with an appropriate EMS User.

     - examples: [{contentType=application/json, example={
  "sessionToken" : "sessionToken",
  "_id" : "_id"
}}]
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<UserSignUpResponseObject> 
     */
    open class func signupUserWithRequestBuilder(body: UserCredentialsObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UserSignUpResponseObject> {
        let path = "/users/signup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserSignUpResponseObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update User
     - parameter id: (path) A user ID 
     - parameter body: (body) Add any fieldName 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(id: String, body: UpdateObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UpdatedObject?, _ error: ErrorResponse?) -> Void)) {
        updateUserWithRequestBuilder(id: id, body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update User
     - PUT /users/{id}
     -  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.

     - examples: [{contentType=application/json, example={
  "updated" : "updated"
}}]
     - parameter id: (path) A user ID 
     - parameter body: (body) Add any fieldName 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - returns: RequestBuilder<UpdatedObject> 
     */
    open class func updateUserWithRequestBuilder(id: String, body: UpdateObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UpdatedObject> {
        var path = "/users/{id}"
        let idPreEscape = "\(id)"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UpdatedObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
