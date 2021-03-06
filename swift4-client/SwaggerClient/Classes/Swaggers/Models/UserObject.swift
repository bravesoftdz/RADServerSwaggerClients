//
// UserObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserObject: Codable {

    public var _id: String
    public var username: String
    public var meta: MetaObject

    public init(_id: String, username: String, meta: MetaObject) {
        self._id = _id
        self.username = username
        self.meta = meta
    }
    public var additionalProperties: [String:String] = [:]

    public subscript(key: String) -> String? {
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

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(_id, forKey: "id")
        try container.encode(username, forKey: "username")
        try container.encode(meta, forKey: "_meta")
        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        _id = try container.decode(String.self, forKey: "id")
        username = try container.decode(String.self, forKey: "username")
        meta = try container.decode(MetaObject.self, forKey: "_meta")
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("id")
        nonAdditionalPropertyKeys.insert("username")
        nonAdditionalPropertyKeys.insert("_meta")
        additionalProperties = try container.decodeMap(String.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

