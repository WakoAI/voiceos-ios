//
// PhoneNumber.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PhoneNumber: Codable, JSONEncodable, Hashable {

    /** The uri of the phone number. */
    public var uri: String
    /** The agent uri that will be used for inbound calls. If null, the phone number is will not receive any calls. */
    public var inboundAgentUri: String?
    /** The phone number. */
    public var phoneNumber: String
    /** The account id associated with the phone number. */
    public var accountId: String
    /** The date the phone number was created. */
    public var createdAt: Date
    /** The date the phone number was last updated. */
    public var updatedAt: Date
    /** The telephony of the phone number. */
    public var telephony: TwilioTelephony
    /** The stripe subscription id of the phone number. Returns null if the phone number was imported. */
    public var stripeSubscriptionId: String?

    public init(uri: String, inboundAgentUri: String? = nil, phoneNumber: String, accountId: String, createdAt: Date, updatedAt: Date, telephony: TwilioTelephony, stripeSubscriptionId: String? = nil) {
        self.uri = uri
        self.inboundAgentUri = inboundAgentUri
        self.phoneNumber = phoneNumber
        self.accountId = accountId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.telephony = telephony
        self.stripeSubscriptionId = stripeSubscriptionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uri
        case inboundAgentUri = "inbound_agent_uri"
        case phoneNumber = "phone_number"
        case accountId = "account_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case telephony
        case stripeSubscriptionId = "stripe_subscription_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(uri, forKey: .uri)
        try container.encodeIfPresent(inboundAgentUri, forKey: .inboundAgentUri)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(telephony, forKey: .telephony)
        try container.encodeIfPresent(stripeSubscriptionId, forKey: .stripeSubscriptionId)
    }
}

