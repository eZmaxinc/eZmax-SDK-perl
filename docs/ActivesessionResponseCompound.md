# EzmaxApi::Object::ActivesessionResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::ActivesessionResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fki_ezsignuser_id** | **int** | The unique ID of the Ezsignuser | [optional] 
**b_systemconfiguration_ezsignpaidbyoffice** | **boolean** | Whether if Ezsign is paid by the company or not | [optional] 
**e_systemconfiguration_ezsignofficeplan** | [**FieldESystemconfigurationEzsignofficeplan**](FieldESystemconfigurationEzsignofficeplan.md) |  | [optional] 
**e_user_ezsignaccess** | [**FieldEUserEzsignaccess**](FieldEUserEzsignaccess.md) |  | 
**e_user_ezsignprepaid** | [**FieldEUserEzsignprepaid**](FieldEUserEzsignprepaid.md) |  | [optional] 
**b_user_ezsigntrial** | **boolean** | Whether the User&#39;s eZsign subscription is a trial | [optional] 
**dt_user_ezsignprepaidexpiration** | **string** | The eZsign prepaid expiration date | [optional] 
**a_pki_permission_id** | **ARRAY[int]** | An array of permissions granted to the user or api key | 
**obj_user_real** | [**ActivesessionResponseCompoundUser**](ActivesessionResponseCompoundUser.md) |  | 
**obj_user_cloned** | [**ActivesessionResponseCompoundUser**](ActivesessionResponseCompoundUser.md) |  | [optional] 
**obj_apikey** | [**ActivesessionResponseCompoundApikey**](ActivesessionResponseCompoundApikey.md) |  | [optional] 
**a_e_module_internalname** | **ARRAY[string]** | An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


