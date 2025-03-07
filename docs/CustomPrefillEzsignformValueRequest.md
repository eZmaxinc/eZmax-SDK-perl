# EzmaxApi::Object::CustomPrefillEzsignformValueRequest

## Load the model package
```perl
use EzmaxApi::Object::CustomPrefillEzsignformValueRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**s_ezsignformfieldgroup_label** | **string** | The Label for the Ezsignformfieldgroup | 
**s_ezsignformfield_label** | **string** | The Label for the Ezsignformfield | [optional] 
**s_ezsignformfield_enteredvalue** | **string** | This is the value enterred for the Ezsignformfield  This can only be set if eEzsignformfieldgroupType is **Dropdown**, **Text** or **Textarea** | [optional] 
**b_ezsignformfield_selected** | **boolean** | Whether the Ezsignformfield is selected or not by default.  This can only be set if eEzsignformfieldgroupType is **Checkbox** or **Radio** | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


