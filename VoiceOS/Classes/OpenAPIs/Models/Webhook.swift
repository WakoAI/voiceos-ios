//
// Webhook.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Webhook: Codable, JSONEncodable, Hashable {

    public var event: Event
    /** The url to call when the event is triggered */
    public var url: String
    /** The method to use when calling the url */
    public var method: MethodEnum
    /** The headers to use when calling the url */
    public var headers: [String: String]?
    /** The filter to use when triggering the webhook */
    public var filter: [String: Int]?

    public init(event: Event, url: String, method: MethodEnum, headers: [String: String]? = nil, filter: [String: Int]? = nil) {
        self.event = event
        self.url = url
        self.method = method
        self.headers = headers
        self.filter = filter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case event
        case url
        case method
        case headers
        case filter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(event, forKey: .event)
        try container.encode(url, forKey: .url)
        try container.encode(method, forKey: .method)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(filter, forKey: .filter)
    }
}

