//
// InstallationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class InstallationsAPI {
    /**
     Add Installation
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addInstallation(body: InstallationAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: InstallationAddedObject?,_ error: Error?) -> Void)) {
        addInstallationWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add Installation
     - POST /installations
     -  |      Used to add a new `Installation` object to the EMS database.
     - examples: [{contentType=application/json, example={
  "_id" : "_id"
}}]
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<InstallationAddedObject> 
     */
    open class func addInstallationWithRequestBuilder(body: InstallationAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<InstallationAddedObject> {
        let path = "/installations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InstallationAddedObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Delete Installation
     
     - parameter _id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteInstallation(_id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteInstallationWithRequestBuilder(_id: _id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete Installation
     - DELETE /installations/{id}
     -  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     
     - parameter _id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteInstallationWithRequestBuilder(_id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        var path = "/installations/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Installation Channels
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChannels(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: [ChannelName]?,_ error: Error?) -> Void)) {
        getChannelsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Installation Channels
     - GET /installations/channels
     -  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     - examples: [{contentType=application/json, example=[ { }, { } ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<[ChannelName]> 
     */
    open class func getChannelsWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[ChannelName]> {
        let path = "/installations/channels"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ChannelName]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Installation
     
     - parameter _id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInstallation(_id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: InstallationObject?,_ error: Error?) -> Void)) {
        getInstallationWithRequestBuilder(_id: _id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Installation
     - GET /installations/{id}
     -  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     - examples: [{contentType=application/json, example={
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
}}]
     
     - parameter _id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<InstallationObject> 
     */
    open class func getInstallationWithRequestBuilder(_id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<InstallationObject> {
        var path = "/installations/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InstallationObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Fields
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInstallationFields(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: [FieldInstallationObject]?,_ error: Error?) -> Void)) {
        getInstallationFieldsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Fields
     - GET /installations/fields
     -  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
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

     - returns: RequestBuilder<[FieldInstallationObject]> 
     */
    open class func getInstallationFieldsWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[FieldInstallationObject]> {
        let path = "/installations/fields"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[FieldInstallationObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get Installations
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInstallations(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil, completion: @escaping ((_ data: [InstallationObject]?,_ error: Error?) -> Void)) {
        getInstallationsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret, skip: skip, limit: limit, order: order, _where: _where).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Installations
     - GET /installations
     -  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     - examples: [{contentType=application/json, example=[ {
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
}, {
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
} ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

     - returns: RequestBuilder<[InstallationObject]> 
     */
    open class func getInstallationsWithRequestBuilder(xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil) -> RequestBuilder<[InstallationObject]> {
        let path = "/installations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
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

        let requestBuilder: RequestBuilder<[InstallationObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update Installation
     
     - parameter _id: (path) A Installation ID 
     - parameter body: (body) Installation fields to update 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateInstallation(_id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: @escaping ((_ data: UpdatedInstallationObject?,_ error: Error?) -> Void)) {
        updateInstallationWithRequestBuilder(_id: _id, body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Installation
     - PUT /installations/{id}
     -  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     - examples: [{contentType=application/json, example={
  "updated" : "updated"
}}]
     
     - parameter _id: (path) A Installation ID 
     - parameter body: (body) Installation fields to update 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<UpdatedInstallationObject> 
     */
    open class func updateInstallationWithRequestBuilder(_id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UpdatedInstallationObject> {
        var path = "/installations/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UpdatedInstallationObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}