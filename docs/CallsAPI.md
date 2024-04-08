# CallsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCall**](CallsAPI.md#createcall) | **POST** /calls/create | Create Call
[**getCall**](CallsAPI.md#getcall) | **GET** /calls/{call_id} | Get Call
[**getRecording**](CallsAPI.md#getrecording) | **GET** /calls/{call_id}/recording | Get Call Recording
[**listCalls**](CallsAPI.md#listcalls) | **GET** /calls | List Calls


# **createCall**
```swift
    open class func createCall(createCall: CreateCall, completion: @escaping (_ data: CreateCallResponse?, _ error: Error?) -> Void)
```

Create Call

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createCall = CreateCall(toNumber: "toNumber_example", fromNumber: "fromNumber_example", agent: Agent(name: 123, initialMessage: 123, prompt: 123, language: AgentLanguage(), languageModel: OpenAI(provider: "provider_example", model: ChatGPT(), functions: [OpenAIFunction(name: "name_example", wait: false, description: "description_example", parameters: OpenAIFunctionParameter(type: OpenAIFunctionType(), properties: 123, _required: ["_required_example"]))]), voice: Voice(provider: 123, model: AzureModel(), optimizeLatency: 123, pitch: 123, rate: 123, speaker: 123, reduceLantency: 123, speedAlpha: 123), transcriber: Transcriber(provider: 123, model: DeepgramModel(), language: DeepgramLanguages(), keywords: 123, languages: 123), maxCallDuration: 123, webhooks: 123, id: 123, uri: 123, accountId: 123, createdAt: 123, updatedAt: 123)) // CreateCall | 

// Create Call
CallsAPI.createCall(createCall: createCall) { (response, error) in
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
 **createCall** | [**CreateCall**](CreateCall.md) |  | 

### Return type

[**CreateCallResponse**](CreateCallResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCall**
```swift
    open class func getCall(callId: String, completion: @escaping (_ data: CallResponse?, _ error: Error?) -> Void)
```

Get Call

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let callId = "callId_example" // String | 

// Get Call
CallsAPI.getCall(callId: callId) { (response, error) in
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
 **callId** | **String** |  | 

### Return type

[**CallResponse**](CallResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecording**
```swift
    open class func getRecording(callId: String, completion: @escaping (_ data: CallRecording?, _ error: Error?) -> Void)
```

Get Call Recording

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let callId = "callId_example" // String | 

// Get Call Recording
CallsAPI.getRecording(callId: callId) { (response, error) in
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
 **callId** | **String** |  | 

### Return type

[**CallRecording**](CallRecording.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalls**
```swift
    open class func listCalls(status: CallStatus? = nil, createdBefore: Date? = nil, createdAfter: Date? = nil, index: Int? = nil, size: Int? = nil, completion: @escaping (_ data: CallsPagination?, _ error: Error?) -> Void)
```

List Calls

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = CallStatus() // CallStatus |  (optional)
let createdBefore = Date() // Date |  (optional)
let createdAfter = Date() // Date |  (optional)
let index = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 100)

// List Calls
CallsAPI.listCalls(status: status, createdBefore: createdBefore, createdAfter: createdAfter, index: index, size: size) { (response, error) in
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
 **status** | [**CallStatus**](.md) |  | [optional] 
 **createdBefore** | **Date** |  | [optional] 
 **createdAfter** | **Date** |  | [optional] 
 **index** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 100]

### Return type

[**CallsPagination**](CallsPagination.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

