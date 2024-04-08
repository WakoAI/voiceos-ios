# AgentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the agent | 
**initialMessage** | **String** | The initial message of the agent | 
**prompt** | **String** | The prompt of the agent | 
**language** | [**AgentLanguage**](AgentLanguage.md) | DO NOT USE! Deprecated! | [optional] 
**languageModel** | [**OpenAI**](OpenAI.md) |  | [optional] 
**voice** | [**Voice**](Voice.md) |  | [optional] 
**transcriber** | [**Transcriber**](Transcriber.md) |  | [optional] 
**maxCallDuration** | **Int** | The maximum call duration in seconds. If null, the call can be of any duration. The default value is 10 min. | [optional] [default to 600]
**webhooks** | [Webhook] | The webhooks of the agent | [optional] 
**id** | **String** | The id of the agent | 
**uri** | **String** | The uri of the agent | 
**accountId** | **String** | The id of the owner of the agent | 
**createdAt** | **Date** | The date and time the agent was created | 
**updatedAt** | **Date** | The date and time the agent was last updated | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


