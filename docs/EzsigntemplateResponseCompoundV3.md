# EzmaxApi::Object::EzsigntemplateResponseCompoundV3

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplateResponseCompoundV3;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplate_id** | **int** | The unique ID of the Ezsigntemplate | 
**fki_ezsigntemplatedocument_id** | **int** | The unique ID of the Ezsigntemplatedocument | [optional] 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | [optional] 
**obj_ezsignfoldertype** | [**CustomEzsignfoldertypeTemplateResponse**](CustomEzsignfoldertypeTemplateResponse.md) |  | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**fki_ezdoctemplatedocument_id** | **int** | The unique ID of the Ezdoctemplatedocument | [optional] 
**s_ezdoctemplatedocument_name_x** | **string** | The name of the Ezdoctemplatedocument in the language of the requester | [optional] 
**s_language_name_x** | **string** | The Name of the Language in the language of the requester | 
**s_ezsigntemplate_description** | **string** | The description of the Ezsigntemplate | 
**s_ezsigntemplate_externaldescription** | **string** | The external description of the Ezsigntemplate | [optional] 
**t_ezsigntemplate_comment** | **string** | The comment of the Ezsigntemplate | [optional] 
**e_ezsigntemplate_recognition** | [**FieldEEzsigntemplateRecognition**](FieldEEzsigntemplateRecognition.md) |  | [optional] 
**s_ezsigntemplate_filenameregexp** | **string** | The filename regexp of the Ezsigntemplate. | [optional] 
**b_ezsigntemplate_adminonly** | **boolean** | Whether the Ezsigntemplate can be accessed by admin users only (eUserType&#x3D;Normal) | 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 
**b_ezsigntemplate_editallowed** | **boolean** | Whether the Ezsigntemplate if allowed to edit or not | 
**e_ezsigntemplate_type** | [**FieldEEzsigntemplateType**](FieldEEzsigntemplateType.md) |  | [optional] 
**obj_ezsigntemplatedocument** | [**EzsigntemplatedocumentResponse**](EzsigntemplatedocumentResponse.md) |  | [optional] 
**a_obj_ezsigntemplatesigner** | [**ARRAY[EzsigntemplatesignerResponseCompound]**](EzsigntemplatesignerResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


