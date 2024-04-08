# AgentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](AgentsAPI.md#createagent) | **POST** /agents | Create Agent
[**deleteAgent**](AgentsAPI.md#deleteagent) | **DELETE** /agents/{agent_id} | Delete Agent
[**getAgent**](AgentsAPI.md#getagent) | **GET** /agents/{agent_id} | Get Agent
[**listAgents**](AgentsAPI.md#listagents) | **GET** /agents | List Agents
[**updateAgent**](AgentsAPI.md#updateagent) | **PATCH** /agents/{agent_id} | Update Agent


# **createAgent**
```swift
    open class func createAgent(agentConfiguration: AgentConfiguration, completion: @escaping (_ data: AgentResponse?, _ error: Error?) -> Void)
```

Create Agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let agentConfiguration = AgentConfiguration(name: "name_example", initialMessage: "initialMessage_example", prompt: "prompt_example", language: AgentLanguage(), languageModel: OpenAI(provider: "provider_example", model: ChatGPT(), functions: [OpenAIFunction(name: "name_example", wait: false, description: "description_example", parameters: OpenAIFunctionParameter(type: OpenAIFunctionType(), properties: 123, _required: ["_required_example"]))]), voice: Voice(provider: 123, model: AzureModel(), optimizeLatency: 123, pitch: 123, rate: 123, speaker: 123, reduceLantency: 123, speedAlpha: 123), transcriber: Transcriber(provider: 123, model: DeepgramModel(), language: DeepgramLanguages(), keywords: 123, languages: 123), maxCallDuration: 123, webhooks: [Webhook(event: Event(), url: "url_example", method: MethodEnum(), headers: "TODO", filter: "TODO")]) // AgentConfiguration | 

// Create Agent
AgentsAPI.createAgent(agentConfiguration: agentConfiguration) { (response, error) in
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
 **agentConfiguration** | [**AgentConfiguration**](AgentConfiguration.md) |  | 

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgent**
```swift
    open class func deleteAgent(agentId: String, completion: @escaping (_ data: AgentResponse?, _ error: Error?) -> Void)
```

Delete Agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let agentId = "agentId_example" // String | 

// Delete Agent
AgentsAPI.deleteAgent(agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgent**
```swift
    open class func getAgent(agentId: String, completion: @escaping (_ data: AgentResponse?, _ error: Error?) -> Void)
```

Get Agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let agentId = "agentId_example" // String | 

// Get Agent
AgentsAPI.getAgent(agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgents**
```swift
    open class func listAgents(createdAfter: Date? = nil, createdBefore: Date? = nil, index: Int? = nil, size: Int? = nil, completion: @escaping (_ data: AgentPagination?, _ error: Error?) -> Void)
```

List Agents

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createdAfter = Date() // Date |  (optional)
let createdBefore = Date() // Date |  (optional)
let index = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 100)

// List Agents
AgentsAPI.listAgents(createdAfter: createdAfter, createdBefore: createdBefore, index: index, size: size) { (response, error) in
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

[**AgentPagination**](AgentPagination.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAgent**
```swift
    open class func updateAgent(agentId: String, updateAgent: UpdateAgent, completion: @escaping (_ data: AgentResponse?, _ error: Error?) -> Void)
```

Update Agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let agentId = "agentId_example" // String | 
let updateAgent = UpdateAgent(name: "name_example", initialMessage: "initialMessage_example", prompt: "prompt_example", language: AgentLanguage(), languageModel: OpenAI(provider: "provider_example", model: ChatGPT(), functions: [OpenAIFunction(name: "name_example", wait: false, description: "description_example", parameters: OpenAIFunctionParameter(type: OpenAIFunctionType(), properties: 123, _required: ["_required_example"]))]), voice: Voice_1(provider: 123, model: AzureModel(), optimizeLatency: 123, pitch: 123, rate: 123, speaker: 123, reduceLantency: 123, speedAlpha: 123), transcriber: Transcriber_1(provider: 123, model: DeepgramModel(), language: DeepgramLanguages(), keywords: 123, languages: 123), maxDurationTime: 123, webhooks: [Webhook(event: Event(), url: "url_example", method: MethodEnum(), headers: "TODO", filter: "TODO")]) // UpdateAgent | 

// Update Agent
AgentsAPI.updateAgent(agentId: agentId, updateAgent: updateAgent) { (response, error) in
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
 **agentId** | **String** |  | 
 **updateAgent** | [**UpdateAgent**](UpdateAgent.md) |  | 

### Return type

[**AgentResponse**](AgentResponse.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

