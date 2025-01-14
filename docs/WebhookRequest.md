# EzmaxApi::Object::WebhookRequest

## Load the model package
```perl
use EzmaxApi::Object::WebhookRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_webhook_id** | **int** | The unique ID of the Webhook | [optional] 
**fki_authenticationexternal_id** | **int** | The unique ID of the Authenticationexternal | [optional] 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | [optional] 
**s_webhook_description** | **string** | The description of the Webhook | 
**e_webhook_module** | [**FieldEWebhookModule**](FieldEWebhookModule.md) |  | 
**e_webhook_ezsignevent** | [**FieldEWebhookEzsignevent**](FieldEWebhookEzsignevent.md) |  | [optional] 
**e_webhook_managementevent** | [**FieldEWebhookManagementevent**](FieldEWebhookManagementevent.md) |  | [optional] 
**s_webhook_url** | **string** | The URL of the Webhook callback | 
**s_webhook_emailfailed** | **string** | The email that will receive the Webhook in case all attempts fail | 
**b_webhook_isactive** | **boolean** | Whether the Webhook is active or not | 
**b_webhook_issigned** | **boolean** | Whether the requests will be signed or not | [optional] 
**b_webhook_skipsslvalidation** | **boolean** | Wheter the server&#39;s SSL certificate should be validated or not. Not recommended to skip for production use | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


