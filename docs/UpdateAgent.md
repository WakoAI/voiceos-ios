# UpdateAgent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the agent | [optional] 
**initialMessage** | **String** | The initial message of the agent | [optional] 
**prompt** | **String** | The prompt preamble of the agent | [optional] 
**language** | [**AgentLanguage**](AgentLanguage.md) | The language of the agent | [optional] 
**languageModel** | [**OpenAI**](OpenAI.md) | The language model of the agent. | [optional] 
**voice** | [**Voice1**](Voice1.md) |  | [optional] 
**transcriber** | [**Transcriber1**](Transcriber1.md) |  | [optional] 
**maxDurationTime** | **Int** | The maximum call duration in seconds. If null, the call can be of any duration. The default value is 10 min. | [optional] [default to 600]
**webhooks** | [Webhook] | The webhooks of the agent | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


