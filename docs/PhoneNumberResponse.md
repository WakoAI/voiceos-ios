# PhoneNumberResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | The uri of the phone number. | 
**inboundAgentUri** | **String** | The agent uri that will be used for inbound calls. If null, the phone number is will not receive any calls. | [optional] 
**phoneNumber** | **String** | The phone number. | 
**accountId** | **String** | The account id associated with the phone number. | 
**createdAt** | **Date** | The date the phone number was created. | 
**updatedAt** | **Date** | The date the phone number was last updated. | 
**telephony** | [**TwilioTelephony**](TwilioTelephony.md) | The telephony of the phone number. | 
**stripeSubscriptionId** | **String** | The stripe subscription id of the phone number. Returns null if the phone number was imported. | [optional] 
**id** | **String** | The id of the phone number. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


