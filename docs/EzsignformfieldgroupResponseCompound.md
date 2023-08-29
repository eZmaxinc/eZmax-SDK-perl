# EzmaxApi::Object::EzsignformfieldgroupResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsignformfieldgroupResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignformfieldgroup_id** | **int** | The unique ID of the Ezsignformfieldgroup | 
**fki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | 
**e_ezsignformfieldgroup_type** | [**FieldEEzsignformfieldgroupType**](FieldEEzsignformfieldgroupType.md) |  | 
**e_ezsignformfieldgroup_signerrequirement** | [**FieldEEzsignformfieldgroupSignerrequirement**](FieldEEzsignformfieldgroupSignerrequirement.md) |  | 
**s_ezsignformfieldgroup_label** | **string** | The Label for the Ezsignformfieldgroup | 
**i_ezsignformfieldgroup_step** | **int** | The step when the Ezsignsigner will be invited to fill the form fields | 
**s_ezsignformfieldgroup_defaultvalue** | **string** | The default value for the Ezsignformfieldgroup | [optional] 
**i_ezsignformfieldgroup_filledmin** | **int** | The minimum number of Ezsignformfield that must be filled in the Ezsignformfieldgroup | 
**i_ezsignformfieldgroup_filledmax** | **int** | The maximum number of Ezsignformfield that must be filled in the Ezsignformfieldgroup | 
**b_ezsignformfieldgroup_readonly** | **boolean** | Whether the Ezsignformfieldgroup is read only or not. | 
**i_ezsignformfieldgroup_maxlength** | **int** | The maximum length for the value in the Ezsignformfieldgroup  This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea** | [optional] 
**b_ezsignformfieldgroup_encrypted** | **boolean** | Whether the Ezsignformfieldgroup is encrypted in the database or not. Encrypted values are not displayed on the Ezsigndocument. This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea** | [optional] 
**e_ezsignformfieldgroup_textvalidation** | [**EnumTextvalidation**](EnumTextvalidation.md) |  | [optional] 
**s_ezsignformfieldgroup_regexp** | **string** | A regular expression to indicate what values are acceptable for the Ezsignformfieldgroup.  This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea** | [optional] 
**t_ezsignformfieldgroup_tooltip** | **string** | A tooltip that will be presented to Ezsignsigner about the Ezsignformfieldgroup | [optional] 
**e_ezsignformfieldgroup_tooltipposition** | [**FieldEEzsignformfieldgroupTooltipposition**](FieldEEzsignformfieldgroupTooltipposition.md) |  | [optional] 
**a_obj_ezsignformfield** | [**ARRAY[EzsignformfieldResponseCompound]**](EzsignformfieldResponseCompound.md) |  | 
**a_obj_dropdown_element** | [**ARRAY[CustomDropdownElementResponseCompound]**](CustomDropdownElementResponseCompound.md) |  | [optional] 
**a_obj_ezsignformfieldgroupsigner** | [**ARRAY[EzsignformfieldgroupsignerResponseCompound]**](EzsignformfieldgroupsignerResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


