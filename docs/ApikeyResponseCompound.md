# EzmaxApi::Object::ApikeyResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::ApikeyResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_apikey_id** | **int** | The unique ID of the Apikey | 
**fki_user_id** | **int** | The unique ID of the User | 
**obj_apikey_description** | [**MultilingualApikeyDescription**](MultilingualApikeyDescription.md) |  | 
**s_computed_token** | **string** | The secret token for the API key.  This will be returned only on creation. | [optional] 
**b_apikey_isactive** | **boolean** | Whether the apikey is active or not | 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


