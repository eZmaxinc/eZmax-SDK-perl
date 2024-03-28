# EzmaxApi::Object::SystemconfigurationResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::SystemconfigurationResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_systemconfiguration_id** | **int** | The unique ID of the Systemconfiguration | 
**fki_systemconfigurationtype_id** | **int** | The unique ID of the Systemconfigurationtype | 
**s_systemconfigurationtype_description_x** | **string** | The description of the Systemconfigurationtype in the language of the requester | 
**e_systemconfiguration_newexternaluseraction** | [**FieldESystemconfigurationNewexternaluseraction**](FieldESystemconfigurationNewexternaluseraction.md) |  | 
**e_systemconfiguration_language1** | [**FieldESystemconfigurationLanguage1**](FieldESystemconfigurationLanguage1.md) |  | 
**e_systemconfiguration_language2** | [**FieldESystemconfigurationLanguage2**](FieldESystemconfigurationLanguage2.md) |  | 
**e_systemconfiguration_ezsign** | [**FieldESystemconfigurationEzsign**](FieldESystemconfigurationEzsign.md) |  | [optional] 
**e_systemconfiguration_ezsignofficeplan** | [**FieldESystemconfigurationEzsignofficeplan**](FieldESystemconfigurationEzsignofficeplan.md) |  | [optional] 
**b_systemconfiguration_ezsignpaidbyoffice** | **boolean** | Whether if Ezsign is paid by the company or not | [optional] 
**b_systemconfiguration_ezsignpersonnal** | **boolean** | Whether if we allow the creation of personal files in eZsign | 
**b_systemconfiguration_isdisposalactive** | **boolean** | Whether is Disposal processus is active or not | [optional] 
**b_systemconfiguration_sspr** | **boolean** | Whether if we allow SSPR | 
**dt_systemconfiguration_readonlyexpirationstart** | **string** | The start date where the system will be in read only | [optional] 
**dt_systemconfiguration_readonlyexpirationend** | **string** | The end date where the system will be in read only | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


