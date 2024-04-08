//
// CallCost.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CallCost: Codable, JSONEncodable, Hashable {

    /** The total cost of the call. */
    public var total: Double
    /** The synthetizer cost. */
    public var synthesizer: SynthesizerCost
    /** The transcriber cost. */
    public var transcriber: TranscriberCost
    /** The language model cost. */
    public var languageModel: LanguageModelCost
    /** The telephony cost. Returns null if the call was not a phone call. */
    public var telephony: TelephonyCost?
    /** The cost of the agent. */
    public var agent: AgentCost
    /** The currency used. As of now, we only offer USD. */
    public var currency: Currency?

    public init(total: Double, synthesizer: SynthesizerCost, transcriber: TranscriberCost, languageModel: LanguageModelCost, telephony: TelephonyCost? = nil, agent: AgentCost, currency: Currency? = nil) {
        self.total = total
        self.synthesizer = synthesizer
        self.transcriber = transcriber
        self.languageModel = languageModel
        self.telephony = telephony
        self.agent = agent
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case synthesizer
        case transcriber
        case languageModel = "language_model"
        case telephony
        case agent
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(total, forKey: .total)
        try container.encode(synthesizer, forKey: .synthesizer)
        try container.encode(transcriber, forKey: .transcriber)
        try container.encode(languageModel, forKey: .languageModel)
        try container.encodeIfPresent(telephony, forKey: .telephony)
        try container.encode(agent, forKey: .agent)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

