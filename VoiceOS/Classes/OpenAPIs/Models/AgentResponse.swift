//
// AgentResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AgentResponse: Codable, JSONEncodable, Hashable {

    /** The name of the agent */
    public var name: String
    /** The initial message of the agent */
    public var initialMessage: String
    /** The prompt of the agent */
    public var prompt: String
    /** DO NOT USE! Deprecated! */
    public var language: AgentLanguage?
    public var languageModel: OpenAI?
    public var voice: Voice?
    public var transcriber: Transcriber?
    /** The maximum call duration in seconds. If null, the call can be of any duration. The default value is 10 min. */
    public var maxCallDuration: Int? = 600
    /** The webhooks of the agent */
    public var webhooks: [Webhook]?
    /** The id of the agent */
    public var id: String
    /** The uri of the agent */
    public var uri: String
    /** The id of the owner of the agent */
    public var accountId: String
    /** The date and time the agent was created */
    public var createdAt: Date
    /** The date and time the agent was last updated */
    public var updatedAt: Date

    public init(name: String, initialMessage: String, prompt: String, language: AgentLanguage? = nil, languageModel: OpenAI? = nil, voice: Voice? = nil, transcriber: Transcriber? = nil, maxCallDuration: Int? = 600, webhooks: [Webhook]? = nil, id: String, uri: String, accountId: String, createdAt: Date, updatedAt: Date) {
        self.name = name
        self.initialMessage = initialMessage
        self.prompt = prompt
        self.language = language
        self.languageModel = languageModel
        self.voice = voice
        self.transcriber = transcriber
        self.maxCallDuration = maxCallDuration
        self.webhooks = webhooks
        self.id = id
        self.uri = uri
        self.accountId = accountId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case initialMessage = "initial_message"
        case prompt
        case language
        case languageModel = "language_model"
        case voice
        case transcriber
        case maxCallDuration = "max_call_duration"
        case webhooks
        case id
        case uri
        case accountId = "account_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(initialMessage, forKey: .initialMessage)
        try container.encode(prompt, forKey: .prompt)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(languageModel, forKey: .languageModel)
        try container.encodeIfPresent(voice, forKey: .voice)
        try container.encodeIfPresent(transcriber, forKey: .transcriber)
        try container.encodeIfPresent(maxCallDuration, forKey: .maxCallDuration)
        try container.encodeIfPresent(webhooks, forKey: .webhooks)
        try container.encode(id, forKey: .id)
        try container.encode(uri, forKey: .uri)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}

