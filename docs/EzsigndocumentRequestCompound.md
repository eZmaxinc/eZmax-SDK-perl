# EzmaxApi::Object::EzsigndocumentRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e_ezsigndocument_source** | **string** | Indicates where to look for the document binary content. | 
**e_ezsigndocument_format** | **string** | Indicates the format of the document. | 
**s_ezsigndocument_base64** | **string** | The Base64 encoded binary content of the document.  This field is Required when eEzsigndocumentSource &#x3D; Base64. | [optional] 
**fki_ezsignfolder_id** | **int** | A reference to a valid Ezsignfolder.  That value is returned after a successful Ezsignfolder Creation. | 
**dt_ezsigndocument_duedate** | **string** | Represent a Date Time. The timezone is the one configured in the User&#39;s profile. | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_ezsigndocument_name** | **string** | The name of the document that will be presented to Ezsignfoldersignerassociations | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


