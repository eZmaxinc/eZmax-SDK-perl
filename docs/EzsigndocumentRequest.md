# EzmaxApi::Object::EzsigndocumentRequest

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | [optional] 
**fki_ezsignfolder_id** | **int** | The unique ID of the Ezsignfolder | 
**fki_ezsigntemplate_id** | **int** | The unique ID of the Ezsigntemplate | [optional] 
**fki_ezsignfoldersignerassociation_id** | **int** | The unique ID of the Ezsignfoldersignerassociation | [optional] 
**fki_ezsignimportdocument_id** | **int** | The unique ID of the Ezsignimportdocument | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**e_ezsigndocument_source** | **string** | Indicates where to look for the document binary content. | 
**e_ezsigndocument_format** | **string** | Indicates the format of the document. | [optional] 
**s_ezsigndocument_base64** | **string** | The Base64 encoded binary content of the document.  This field is Required when eEzsigndocumentSource &#x3D; Base64. | [optional] 
**s_ezsigndocument_url** | **string** | The url where the document content resides.  This field is Required when eEzsigndocumentSource &#x3D; Url. | [optional] 
**b_ezsigndocument_forcerepair** | **boolean** | Try to repair the document or flatten it if it cannot be used for electronic signature.  | [optional] [default to true]
**s_ezsigndocument_password** | **string** | If the source document is password protected, the password to open/modify it. | [optional] 
**e_ezsigndocument_form** | **string** | If the document contains an existing PDF form this property must be set.  **Keep** leaves the form as-is in the document.  **Convert** removes the form and convert all the existing fields to Ezsignformfieldgroups and assign them to the specified **fkiEzsignfoldersignerassociationID**  **Discard** removes the form from the document.  **Flatten** prints the form values in the document. | [optional] 
**dt_ezsigndocument_duedate** | **string** | The maximum date and time at which the Ezsigndocument can be signed. | 
**s_ezsigndocument_name** | **string** | The name of the document that will be presented to Ezsignfoldersignerassociations | 
**s_ezsigndocument_externalid** | **string** | This field can be used to store an External ID from the client&#39;s system.  Anything can be stored in this field, it will never be evaluated by the eZmax system and will be returned AS-IS.  To store multiple values, consider using a JSON formatted structure, a URL encoded string, a CSV or any other custom format.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


