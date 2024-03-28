# EzmaxApi::Object::EzsigntemplateglobalResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplateglobalResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplateglobal_id** | **int** | The unique ID of the Ezsigntemplateglobal | 
**fki_ezsigntemplateglobaldocument_id** | **int** | The unique ID of the Ezsigntemplateglobaldocument | 
**fki_module_id** | **int** | The unique ID of the Module | 
**s_module_name_x** | **string** | The Name of the Module in the language of the requester | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_language_name_x** | **string** | The Name of the Language in the language of the requester | 
**e_ezsigntemplateglobal_module** | [**FieldEEzsigntemplateglobalModule**](FieldEEzsigntemplateglobalModule.md) |  | 
**e_ezsigntemplateglobal_supplier** | [**FieldEEzsigntemplateglobalSupplier**](FieldEEzsigntemplateglobalSupplier.md) |  | 
**s_ezsigntemplateglobal_code** | **string** | The Code of the Ezsigntemplateglobal | 
**s_ezsigntemplateglobal_description** | **string** | The description of the Ezsigntemplate | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


