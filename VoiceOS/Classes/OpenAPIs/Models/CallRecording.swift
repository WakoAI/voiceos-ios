//
// CallRecording.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CallRecording: Codable, JSONEncodable, Hashable {

    /** The recording url of the conversation. */
    public var recordingUrl: String

    public init(recordingUrl: String) {
        self.recordingUrl = recordingUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recordingUrl = "recording_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recordingUrl, forKey: .recordingUrl)
    }
}

