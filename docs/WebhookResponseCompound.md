# EzmaxApi::Object::WebhookResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::WebhookResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_webhook_id** | **int** | The unique ID of the Webhook | 
**fki_authenticationexternal_id** | **int** | The unique ID of the Authenticationexternal | [optional] 
**s_webhook_description** | **string** | The description of the Webhook | 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | [optional] 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | [optional] 
**e_webhook_module** | [**FieldEWebhookModule**](FieldEWebhookModule.md) |  | 
**e_webhook_ezsignevent** | [**FieldEWebhookEzsignevent**](FieldEWebhookEzsignevent.md) |  | [optional] 
**e_webhook_managementevent** | [**FieldEWebhookManagementevent**](FieldEWebhookManagementevent.md) |  | [optional] 
**s_webhook_url** | **string** | The URL of the Webhook callback | 
**s_webhook_emailfailed** | **string** | The email that will receive the Webhook in case all attempts fail | 
**s_webhook_apikey** | **string** | The Apikey for the Webhook.  This will be hidden if we are not creating or regenerating the Apikey. | [optional] 
**s_webhook_secret** | **string** | The Secret for the Webhook.  This will be hidden if we are not creating or regenerating the Apikey. | [optional] 
**b_webhook_isactive** | **boolean** | Whether the Webhook is active or not | 
**b_webhook_issigned** | **boolean** | Whether the requests will be signed or not | 
**b_webhook_skipsslvalidation** | **boolean** | Wheter the server&#39;s SSL certificate should be validated or not. Not recommended to skip for production use | 
**s_authenticationexternal_description** | **string** | The description of the Authenticationexternal | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 
**s_webhook_event** | **string** | The concatenated string to describe the Webhook event | [optional] 
**a_obj_webhookheader** | [**ARRAY[WebhookheaderResponseCompound]**](WebhookheaderResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


