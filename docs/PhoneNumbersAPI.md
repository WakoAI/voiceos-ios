# PhoneNumbersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buyPhoneNumberPhoneNumbersBuyPost**](PhoneNumbersAPI.md#buyphonenumberphonenumbersbuypost) | **POST** /phone_numbers/buy | Buy Phone Number
[**deletePhoneNumberPhoneNumbersPhoneNumberDelete**](PhoneNumbersAPI.md#deletephonenumberphonenumbersphonenumberdelete) | **DELETE** /phone_numbers/{phone_number} | Delete Phone Number
[**getPhoneNumber**](PhoneNumbersAPI.md#getphonenumber) | **GET** /phone_numbers/{phone_number} | Get Phone Number
[**listAvailablePhoneNumbers**](PhoneNumbersAPI.md#listavailablephonenumbers) | **GET** /phone_numbers/buy | List Available Phone Numbers
[**listPhoneNumbers**](PhoneNumbersAPI.md#listphonenumbers) | **GET** /phone_numbers | List Phone Numbers
[**updatePhoneNumberPhoneNumbersPhoneNumberPatch**](PhoneNumbersAPI.md#updatephonenumberphonenumbersphonenumberpatch) | **PATCH** /phone_numbers/{phone_number} | Update Phone Number


# **buyPhoneNumberPhoneNumbersBuyPost**
```swift
    open class func buyPhoneNumberPhoneNumbersBuyPost(buyPhoneNumber: BuyPhoneNumber, completion: @escaping (_ data: PhoneNumberResponse?, _ error: Error?) -> Void)
```

Buy Phone Number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let buyPhoneNumber = BuyPhoneNumber(provider: "provider_example", phoneNumber: "phoneNumber_example") // BuyPhoneNumber | 

// Buy Phone Number
PhoneNumbersAPI.buyPhoneNumberPhoneNumbersBuyPost(buyPhoneNumber: buyPhoneNumber) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyPhoneNumber** | [**BuyPhoneNumber**](BuyPhoneNumber.md) |  | 

### Return type

[**PhoneNumberResponse**](PhoneNumberResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePhoneNumberPhoneNumbersPhoneNumberDelete**
```swift
    open class func deletePhoneNumberPhoneNumbersPhoneNumberDelete(phoneNumber: String, releasePhoneNumber: Bool? = nil, completion: @escaping (_ data: PhoneNumber?, _ error: Error?) -> Void)
```

Delete Phone Number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | 
let releasePhoneNumber = true // Bool |  (optional) (default to false)

// Delete Phone Number
PhoneNumbersAPI.deletePhoneNumberPhoneNumbersPhoneNumberDelete(phoneNumber: phoneNumber, releasePhoneNumber: releasePhoneNumber) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String** |  | 
 **releasePhoneNumber** | **Bool** |  | [optional] [default to false]

### Return type

[**PhoneNumber**](PhoneNumber.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhoneNumber**
```swift
    open class func getPhoneNumber(phoneNumber: String, completion: @escaping (_ data: PhoneNumberResponse?, _ error: Error?) -> Void)
```

Get Phone Number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | 

// Get Phone Number
PhoneNumbersAPI.getPhoneNumber(phoneNumber: phoneNumber) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String** |  | 

### Return type

[**PhoneNumberResponse**](PhoneNumberResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailablePhoneNumbers**
```swift
    open class func listAvailablePhoneNumbers(areaCode: String? = nil, contains: String? = nil, limit: Int? = nil, completion: @escaping (_ data: [PhoneNumberToBuy]?, _ error: Error?) -> Void)
```

List Available Phone Numbers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let areaCode = "areaCode_example" // String |  (optional)
let contains = "contains_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 10)

// List Available Phone Numbers
PhoneNumbersAPI.listAvailablePhoneNumbers(areaCode: areaCode, contains: contains, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaCode** | **String** |  | [optional] 
 **contains** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 10]

### Return type

[**[PhoneNumberToBuy]**](PhoneNumberToBuy.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPhoneNumbers**
```swift
    open class func listPhoneNumbers(createdAfter: Date? = nil, createdBefore: Date? = nil, index: Int? = nil, size: Int? = nil, completion: @escaping (_ data: PhoneNumberPagination?, _ error: Error?) -> Void)
```

List Phone Numbers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAfter = Date() // Date |  (optional)
let createdBefore = Date() // Date |  (optional)
let index = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 100)

// List Phone Numbers
PhoneNumbersAPI.listPhoneNumbers(createdAfter: createdAfter, createdBefore: createdBefore, index: index, size: size) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createdAfter** | **Date** |  | [optional] 
 **createdBefore** | **Date** |  | [optional] 
 **index** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 100]

### Return type

[**PhoneNumberPagination**](PhoneNumberPagination.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePhoneNumberPhoneNumbersPhoneNumberPatch**
```swift
    open class func updatePhoneNumberPhoneNumbersPhoneNumberPatch(phoneNumber: String, updatePhoneNumber: UpdatePhoneNumber, completion: @escaping (_ data: PhoneNumberResponse?, _ error: Error?) -> Void)
```

Update Phone Number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | 
let updatePhoneNumber = UpdatePhoneNumber(inboundAgentUri: "inboundAgentUri_example") // UpdatePhoneNumber | 

// Update Phone Number
PhoneNumbersAPI.updatePhoneNumberPhoneNumbersPhoneNumberPatch(phoneNumber: phoneNumber, updatePhoneNumber: updatePhoneNumber) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String** |  | 
 **updatePhoneNumber** | [**UpdatePhoneNumber**](UpdatePhoneNumber.md) |  | 

### Return type

[**PhoneNumberResponse**](PhoneNumberResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

