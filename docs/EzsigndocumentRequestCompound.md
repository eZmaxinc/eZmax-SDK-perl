# EzmaxApi::Object::EzsigndocumentRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | [optional] 
**e_ezsigndocument_source** | **string** | Indicates where to look for the document binary content. | 
**e_ezsigndocument_format** | **string** | Indicates the format of the document. | 
**s_ezsigndocument_base64** | **string** | The Base64 encoded binary content of the document.  This field is Required when eEzsigndocumentSource &#x3D; Base64. | [optional] 
**s_ezsigndocument_url** | **string** | The url where the document content resides.  This field is Required when eEzsigndocumentSource &#x3D; Url. | [optional] 
**b_ezsigndocument_forcerepair** | **boolean** | Try to repair the document or flatten it if it cannot be used for electronic signature.  | [optional] [default to true]
**s_ezsigndocument_password** | **string** | If the source document is password protected, the password to open/modify it. | [optional] [default to &#39;&#39;]
**fki_ezsignfolder_id** | **int** | The unique ID of the Ezsignfolder | 
**dt_ezsigndocument_duedate** | **string** | The maximum date and time at which the Ezsigndocument can be signed. | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_ezsigndocument_name** | **string** | The name of the document that will be presented to Ezsignfoldersignerassociations | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


