# EzmaxApi::Object::WebhookResponse

## Load the model package
```perl
use EzmaxApi::Object::WebhookResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pks_customer_code** | **string** | The customer code assigned to your account | 
**pki_webhook_id** | **int** | The Webhook ID. This value is visible in the admin interface. | 
**e_webhook_module** | **string** | The Module generating the Event. | 
**e_webhook_ezsignevent** | **string** | This Ezsign Event. This property will be set only if the Module is \&quot;Ezsign\&quot;. | [optional] 
**e_webhook_managementevent** | **string** | This Management Event. This property will be set only if the Module is \&quot;Management\&quot;. | [optional] 
**s_webhook_url** | **string** | The url being called | 
**b_webhook_test** | **boolean** | Wheter the webhook received is a manual test or a real event | 
**b_webhook_skipsslvalidation** | **boolean** | Wheter the server&#39;s SSL certificate should be validated or not. Not recommended for production use. | 
**s_webhook_emailfailed** | **string** | The email that will receive the webhook in case all attempts fail. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


