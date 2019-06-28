//
// UserObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class UserObject: JSONEncodable {

    public var id: String?
    public var username: String?
    public var meta: MetaObject?

    public var additionalProperties: [AnyHashable:String] = [:]

    public init() {}

    public subscript(key: AnyHashable) -> String? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["username"] = self.username
        nillableDictionary["_meta"] = self.meta?.encodeToJSON()

        for (key, value) in additionalProperties {
            if let key = key as? String {
               nillableDictionary[key] = value
            }
        }

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
