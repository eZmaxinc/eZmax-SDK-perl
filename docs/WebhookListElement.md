# EzmaxApi::Object::WebhookListElement

## Load the model package
```perl
use EzmaxApi::Object::WebhookListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_webhook_id** | **int** | The unique ID of the Webhook | 
**s_webhook_description** | **string** | The description of the Webhook | 
**s_webhook_url** | **string** | The URL of the Webhook callback | 
**s_webhook_event** | **string** | The concatenated string to describe the Webhook event | 
**s_webhook_emailfailed** | **string** | The email that will receive the Webhook in case all attempts fail | 
**e_webhook_module** | [**FieldEWebhookModule**](FieldEWebhookModule.md) |  | 
**e_webhook_ezsignevent** | [**FieldEWebhookEzsignevent**](FieldEWebhookEzsignevent.md) |  | [optional] 
**e_webhook_managementevent** | [**FieldEWebhookManagementevent**](FieldEWebhookManagementevent.md) |  | [optional] 
**b_webhook_isactive** | **boolean** | Whether the Webhook is active or not | 
**b_webhook_issigned** | **boolean** | Whether the requests will be signed or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


