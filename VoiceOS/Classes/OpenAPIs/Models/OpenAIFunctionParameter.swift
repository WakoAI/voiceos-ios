//
// OpenAIFunctionParameter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OpenAIFunctionParameter: Codable, JSONEncodable, Hashable {

    /** This must be set to 'object'. It instructs the model to return a JSON object containing the function call properties. */
    public var type: OpenAIFunctionType?
    /** This provides a description of the properties required by the function. */
    public var properties: AnyCodable
    /** This specifies the properties that are required by the function. */
    public var _required: [String]?

    public init(type: OpenAIFunctionType? = nil, properties: AnyCodable, _required: [String]? = nil) {
        self.type = type
        self.properties = properties
        self._required = _required
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case properties
        case _required = "required"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(properties, forKey: .properties)
        try container.encodeIfPresent(_required, forKey: ._required)
    }
}

