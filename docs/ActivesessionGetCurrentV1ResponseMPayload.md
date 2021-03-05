# EzmaxApi::Object::ActivesessionGetCurrentV1ResponseMPayload

## Load the model package
```perl
use EzmaxApi::Object::ActivesessionGetCurrentV1ResponseMPayload;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**s_customer_code** | **string** | The customer code specific to the client in which the API request is being made | 
**e_activesession_sessiontype** | **string** | The type of session used for the API request call | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_company_name_x** | **string** | The name of the active Company in the current language | 
**s_department_name_x** | **string** | The name of the active Department in the current language | 
**a_registered_modules** | **ARRAY[string]** | An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key. | 
**a_permissions** | **ARRAY[int]** | An array of permissions granted to the user or api key | 
**fki_user_id** | **int** | The unique ID of the User | 
**fki_apikey_id** | **int** | The unique ID of the Apikey | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


