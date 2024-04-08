# OpenAIFunction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | This is the name of the function to be called. Must be less than 64 characters (a-z, A-Z, 0-9, including underscores). | 
**wait** | **Bool** | If true, the agent will wait for the function to return before continuing. | [optional] [default to false]
**description** | **String** | The description of the OpenAI function call. | 
**parameters** | [**OpenAIFunctionParameter**](OpenAIFunctionParameter.md) | The parameters of the OpenAI function call. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


