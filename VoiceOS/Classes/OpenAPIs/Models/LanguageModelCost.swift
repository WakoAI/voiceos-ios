//
// LanguageModelCost.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LanguageModelCost: Codable, JSONEncodable, Hashable {

    /** The provider of the language model. */
    public var provider: WakoApiModelsLanguageModelProvider
    /** The cost for the language model usage. Returns zero, if the provider account you provided was used. */
    public var cost: Double
    /** The number of input tokens used for the language model. */
    public var inputTokens: Int
    /** The number of output tokens used for the language model. */
    public var outputTokens: Int
    /** Whether the provider account you provided was used. If true, the cost will be zero. */
    public var external: Bool

    public init(provider: WakoApiModelsLanguageModelProvider, cost: Double, inputTokens: Int, outputTokens: Int, external: Bool) {
        self.provider = provider
        self.cost = cost
        self.inputTokens = inputTokens
        self.outputTokens = outputTokens
        self.external = external
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case cost
        case inputTokens = "input_tokens"
        case outputTokens = "output_tokens"
        case external
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(provider, forKey: .provider)
        try container.encode(cost, forKey: .cost)
        try container.encode(inputTokens, forKey: .inputTokens)
        try container.encode(outputTokens, forKey: .outputTokens)
        try container.encode(external, forKey: .external)
    }
}

