//
// PhoneNumbersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PhoneNumbersAPI {

    /**
     Buy Phone Number
     
     - parameter buyPhoneNumber: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func buyPhoneNumberPhoneNumbersBuyPost(buyPhoneNumber: BuyPhoneNumber, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PhoneNumberResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return buyPhoneNumberPhoneNumbersBuyPostWithRequestBuilder(buyPhoneNumber: buyPhoneNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Buy Phone Number
     - POST /phone_numbers/buy
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter buyPhoneNumber: (body)  
     - returns: RequestBuilder<PhoneNumberResponse> 
     */
    open class func buyPhoneNumberPhoneNumbersBuyPostWithRequestBuilder(buyPhoneNumber: BuyPhoneNumber) -> RequestBuilder<PhoneNumberResponse> {
        let localVariablePath = "/phone_numbers/buy"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buyPhoneNumber)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PhoneNumberResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Phone Number
     
     - parameter phoneNumber: (path)  
     - parameter releasePhoneNumber: (query)  (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deletePhoneNumberPhoneNumbersPhoneNumberDelete(phoneNumber: String, releasePhoneNumber: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PhoneNumber?, _ error: Error?) -> Void)) -> RequestTask {
        return deletePhoneNumberPhoneNumbersPhoneNumberDeleteWithRequestBuilder(phoneNumber: phoneNumber, releasePhoneNumber: releasePhoneNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Phone Number
     - DELETE /phone_numbers/{phone_number}
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter phoneNumber: (path)  
     - parameter releasePhoneNumber: (query)  (optional, default to false)
     - returns: RequestBuilder<PhoneNumber> 
     */
    open class func deletePhoneNumberPhoneNumbersPhoneNumberDeleteWithRequestBuilder(phoneNumber: String, releasePhoneNumber: Bool? = nil) -> RequestBuilder<PhoneNumber> {
        var localVariablePath = "/phone_numbers/{phone_number}"
        let phoneNumberPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumber))"
        let phoneNumberPostEscape = phoneNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{phone_number}", with: phoneNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "release_phone_number": (wrappedValue: releasePhoneNumber?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PhoneNumber>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Phone Number
     
     - parameter phoneNumber: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPhoneNumber(phoneNumber: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PhoneNumberResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getPhoneNumberWithRequestBuilder(phoneNumber: phoneNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Phone Number
     - GET /phone_numbers/{phone_number}
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter phoneNumber: (path)  
     - returns: RequestBuilder<PhoneNumberResponse> 
     */
    open class func getPhoneNumberWithRequestBuilder(phoneNumber: String) -> RequestBuilder<PhoneNumberResponse> {
        var localVariablePath = "/phone_numbers/{phone_number}"
        let phoneNumberPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumber))"
        let phoneNumberPostEscape = phoneNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{phone_number}", with: phoneNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PhoneNumberResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Available Phone Numbers
     
     - parameter areaCode: (query)  (optional)
     - parameter contains: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAvailablePhoneNumbers(areaCode: String? = nil, contains: String? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [PhoneNumberToBuy]?, _ error: Error?) -> Void)) -> RequestTask {
        return listAvailablePhoneNumbersWithRequestBuilder(areaCode: areaCode, contains: contains, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Available Phone Numbers
     - GET /phone_numbers/buy
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter areaCode: (query)  (optional)
     - parameter contains: (query)  (optional)
     - parameter limit: (query)  (optional, default to 10)
     - returns: RequestBuilder<[PhoneNumberToBuy]> 
     */
    open class func listAvailablePhoneNumbersWithRequestBuilder(areaCode: String? = nil, contains: String? = nil, limit: Int? = nil) -> RequestBuilder<[PhoneNumberToBuy]> {
        let localVariablePath = "/phone_numbers/buy"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "area_code": (wrappedValue: areaCode?.encodeToJSON(), isExplode: true),
            "contains": (wrappedValue: contains?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[PhoneNumberToBuy]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Phone Numbers
     
     - parameter createdAfter: (query)  (optional)
     - parameter createdBefore: (query)  (optional)
     - parameter index: (query)  (optional, default to 1)
     - parameter size: (query)  (optional, default to 100)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listPhoneNumbers(createdAfter: Date? = nil, createdBefore: Date? = nil, index: Int? = nil, size: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PhoneNumberPagination?, _ error: Error?) -> Void)) -> RequestTask {
        return listPhoneNumbersWithRequestBuilder(createdAfter: createdAfter, createdBefore: createdBefore, index: index, size: size).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Phone Numbers
     - GET /phone_numbers
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter createdAfter: (query)  (optional)
     - parameter createdBefore: (query)  (optional)
     - parameter index: (query)  (optional, default to 1)
     - parameter size: (query)  (optional, default to 100)
     - returns: RequestBuilder<PhoneNumberPagination> 
     */
    open class func listPhoneNumbersWithRequestBuilder(createdAfter: Date? = nil, createdBefore: Date? = nil, index: Int? = nil, size: Int? = nil) -> RequestBuilder<PhoneNumberPagination> {
        let localVariablePath = "/phone_numbers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "created_after": (wrappedValue: createdAfter?.encodeToJSON(), isExplode: true),
            "created_before": (wrappedValue: createdBefore?.encodeToJSON(), isExplode: true),
            "index": (wrappedValue: index?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PhoneNumberPagination>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Phone Number
     
     - parameter phoneNumber: (path)  
     - parameter updatePhoneNumber: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updatePhoneNumberPhoneNumbersPhoneNumberPatch(phoneNumber: String, updatePhoneNumber: UpdatePhoneNumber, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PhoneNumberResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return updatePhoneNumberPhoneNumbersPhoneNumberPatchWithRequestBuilder(phoneNumber: phoneNumber, updatePhoneNumber: updatePhoneNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Phone Number
     - PATCH /phone_numbers/{phone_number}
     - API Key:
       - type: apiKey X-API-KEY (HEADER)
       - name: APIKeyHeader
     - parameter phoneNumber: (path)  
     - parameter updatePhoneNumber: (body)  
     - returns: RequestBuilder<PhoneNumberResponse> 
     */
    open class func updatePhoneNumberPhoneNumbersPhoneNumberPatchWithRequestBuilder(phoneNumber: String, updatePhoneNumber: UpdatePhoneNumber) -> RequestBuilder<PhoneNumberResponse> {
        var localVariablePath = "/phone_numbers/{phone_number}"
        let phoneNumberPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumber))"
        let phoneNumberPostEscape = phoneNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{phone_number}", with: phoneNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updatePhoneNumber)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PhoneNumberResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
