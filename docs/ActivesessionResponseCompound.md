# EzmaxApi::Object::ActivesessionResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::ActivesessionResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**a_pki_permission_id** | **ARRAY[int]** | An array of permissions granted to the user or api key | 
**obj_user_real** | [**ActivesessionResponseCompoundUser**](ActivesessionResponseCompoundUser.md) |  | 
**obj_user_cloned** | [**ActivesessionResponseCompoundUser**](ActivesessionResponseCompoundUser.md) |  | [optional] 
**obj_apikey** | [**ActivesessionResponseCompoundApikey**](ActivesessionResponseCompoundApikey.md) |  | [optional] 
**a_e_module_internalname** | **ARRAY[string]** | An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key. | 
**e_activesession_sessiontype** | [**FieldEActivesessionSessiontype**](FieldEActivesessionSessiontype.md) |  | 
**e_activesession_weekdaystart** | [**FieldEActivesessionWeekdaystart**](FieldEActivesessionWeekdaystart.md) |  | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_company_name_x** | **string** | The Name of the Company in the language of the requester | 
**s_department_name_x** | **string** | The Name of the Department in the language of the requester | 
**b_activesession_debug** | **boolean** | Whether the active session is in debug or not | 
**pks_customer_code** | **string** | The customer code assigned to your account | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


