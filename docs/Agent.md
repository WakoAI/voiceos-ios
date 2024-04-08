# Agent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **AnyCodable** | The name of the agent | 
**initialMessage** | **AnyCodable** | The initial message of the agent | 
**prompt** | **AnyCodable** | The prompt of the agent | 
**language** | [**AgentLanguage**](AgentLanguage.md) | DO NOT USE! Deprecated! | [optional] 
**languageModel** | [**OpenAI**](OpenAI.md) |  | [optional] 
**voice** | [**Voice**](Voice.md) |  | [optional] 
**transcriber** | [**Transcriber**](Transcriber.md) |  | [optional] 
**maxCallDuration** | **AnyCodable** | The maximum call duration in seconds. If null, the call can be of any duration. The default value is 10 min. | [optional] 
**webhooks** | **AnyCodable** | The webhooks of the agent | [optional] 
**id** | **AnyCodable** | The id of the agent | 
**uri** | **AnyCodable** | The uri of the agent | 
**accountId** | **AnyCodable** | The id of the owner of the agent | 
**createdAt** | **AnyCodable** | The date and time the agent was created | 
**updatedAt** | **AnyCodable** | The date and time the agent was last updated | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


