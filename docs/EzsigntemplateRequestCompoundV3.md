# EzmaxApi::Object::EzsigntemplateRequestCompoundV3

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplateRequestCompoundV3;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplate_id** | **int** | The unique ID of the Ezsigntemplate | [optional] 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**fki_ezdoctemplatedocument_id** | **int** | The unique ID of the Ezdoctemplatedocument | [optional] 
**s_ezsigntemplate_description** | **string** | The description of the Ezsigntemplate | 
**s_ezsigntemplate_externaldescription** | **string** | The external description of the Ezsigntemplate | [optional] 
**t_ezsigntemplate_comment** | **string** | The comment of the Ezsigntemplate | [optional] 
**e_ezsigntemplate_recognition** | [**FieldEEzsigntemplateRecognition**](FieldEEzsigntemplateRecognition.md) |  | [optional] 
**s_ezsigntemplate_filenameregexp** | **string** | The filename regexp of the Ezsigntemplate. | [optional] 
**b_ezsigntemplate_adminonly** | **boolean** | Whether the Ezsigntemplate can be accessed by admin users only (eUserType&#x3D;Normal) | 
**e_ezsigntemplate_type** | [**FieldEEzsigntemplateType**](FieldEEzsigntemplateType.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


