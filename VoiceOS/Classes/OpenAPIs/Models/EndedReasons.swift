//
// EndedReasons.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An enumeration. */
public enum EndedReasons: String, Codable, CaseIterable {
    case humanHangup = "human_hangup"
    case agentHangup = "agent_hangup"
    case noAnswer = "no_answer"
    case unknown = "unknown"
}
