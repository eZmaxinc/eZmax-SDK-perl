# EzmaxApi::Object::EzsignfolderDuplicateV1Request

## Load the model package
```perl
use EzmaxApi::Object::EzsignfolderDuplicateV1Request;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**s_ezsignfolder_description** | **string** | The description of the Ezsignfolder | 
**a_fki_ezsignfoldersignerassociation_id** | **ARRAY[int]** |  | 
**a_obj_ezsigndocument** | [**ARRAY[CustomEzsigndocumentDuplicateRequest]**](CustomEzsigndocumentDuplicateRequest.md) |  | 
**t_ezsignfolder_note** | **string** | Note about the Ezsignfolder | [optional] 
**b_keepenteredvalues** | **boolean** | Whether we keep the entered values or not in the Ezsignform | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


