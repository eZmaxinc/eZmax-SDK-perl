# EzmaxApi::Object::ApikeyResponse

## Load the model package
```perl
use EzmaxApi::Object::ApikeyResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_apikey_id** | **int** | The unique ID of the Apikey | 
**fki_user_id** | **int** | The unique ID of the User | 
**obj_apikey_description** | [**MultilingualApikeyDescription**](MultilingualApikeyDescription.md) |  | 
**obj_contact_name** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 
**s_apikey_apikey** | **string** | The Apikey for the API key.  This will be hidden if we are not creating or regenerating the Apikey. | [optional] 
**s_apikey_secret** | **string** | The Secret for the API key.  This will be hidden if we are not creating or regenerating the Apikey. | [optional] 
**b_apikey_isactive** | **boolean** | Whether the apikey is active or not | 
**b_apikey_issigned** | **boolean** | Whether the apikey is signed or not | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


