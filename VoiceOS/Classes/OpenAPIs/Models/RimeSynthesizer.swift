//
// RimeSynthesizer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RimeSynthesizer: Codable, JSONEncodable, Hashable {

    public enum Provider: String, Codable, CaseIterable {
        case rime = "rime"
    }
    static let speedAlphaRule = NumericRule<Double>(minimum: 0.5, exclusiveMinimum: false, maximum: 2.0, exclusiveMaximum: false, multipleOf: nil)
    /** The synthesizer provider. */
    public var provider: Provider? = .rime
    /** The speaker of the voice. */
    public var speaker: String? = "abbie"
    /** Reduces the latency of response, at the cost of some possible mispronunciation of digits and abbreviations. */
    public var reduceLantency: Bool? = false
    /** Adjusts the speed of speech. Lower is faster. Higher is slower. */
    public var speedAlpha: Double? = 1.0

    public init(provider: Provider? = .rime, speaker: String? = "abbie", reduceLantency: Bool? = false, speedAlpha: Double? = 1.0) {
        self.provider = provider
        self.speaker = speaker
        self.reduceLantency = reduceLantency
        self.speedAlpha = speedAlpha
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case speaker
        case reduceLantency = "reduce_lantency"
        case speedAlpha = "speed_alpha"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(speaker, forKey: .speaker)
        try container.encodeIfPresent(reduceLantency, forKey: .reduceLantency)
        try container.encodeIfPresent(speedAlpha, forKey: .speedAlpha)
    }
}

