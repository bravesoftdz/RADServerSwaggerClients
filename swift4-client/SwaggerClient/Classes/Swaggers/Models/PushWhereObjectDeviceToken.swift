//
// PushWhereObjectDeviceToken.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** $in */

public struct PushWhereObjectDeviceToken: Codable {

    public var _in: [String]

    public init(_in: [String]) {
        self._in = _in
    }

    public enum CodingKeys: String, CodingKey { 
        case _in = "$in"
    }


}

