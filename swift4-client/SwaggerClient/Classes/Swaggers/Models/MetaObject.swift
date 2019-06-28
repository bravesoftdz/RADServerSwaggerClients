//
// MetaObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MetaObject: Codable {

    public var creator: String
    public var created: String
    public var updated: String?

    public init(creator: String, created: String, updated: String?) {
        self.creator = creator
        self.created = created
        self.updated = updated
    }


}
