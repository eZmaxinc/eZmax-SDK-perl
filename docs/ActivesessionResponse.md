# EzmaxApi::Object::ActivesessionResponse

## Load the model package
```perl
use EzmaxApi::Object::ActivesessionResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e_activesession_usertype** | [**FieldEActivesessionUsertype**](FieldEActivesessionUsertype.md) |  | 
**e_activesession_origin** | [**FieldEActivesessionOrigin**](FieldEActivesessionOrigin.md) |  | 
**e_activesession_weekdaystart** | [**FieldEActivesessionWeekdaystart**](FieldEActivesessionWeekdaystart.md) |  | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_company_name_x** | **string** | The Name of the Company in the language of the requester | 
**s_department_name_x** | **string** | The Name of the Department in the language of the requester | 
**b_activesession_debug** | **boolean** | Whether the active session is in debug or not | 
**b_activesession_issuperadmin** | **boolean** | Whether the active session is superadmin or not | 
**pks_customer_code** | **string** | The customer code assigned to your account | 
**fki_systemconfigurationtype_id** | **int** | The unique ID of the Systemconfigurationtype | 
**fki_signature_id** | **int** | The unique ID of the Signature | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


