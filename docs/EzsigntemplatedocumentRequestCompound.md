# EzmaxApi::Object::EzsigntemplatedocumentRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatedocumentRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplatedocument_id** | **int** | The unique ID of the Ezsigntemplatedocument | [optional] 
**fki_ezsigntemplate_id** | **int** | The unique ID of the Ezsigntemplate | 
**fki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | [optional] 
**fki_ezsigntemplatesigner_id** | **int** | The unique ID of the Ezsigntemplatesigner | [optional] 
**s_ezsigntemplatedocument_name** | **string** | The name of the Ezsigntemplatedocument. | 
**e_ezsigntemplatedocument_source** | **string** | Indicates where to look for the document binary content. | 
**e_ezsigntemplatedocument_format** | **string** | Indicates the format of the template. | [optional] 
**s_ezsigntemplatedocument_base64** | **string** | The Base64 encoded binary content of the document.  This field is Required when eEzsigntemplatedocumentSource &#x3D; Base64. | [optional] 
**s_ezsigntemplatedocument_url** | **string** | The url where the document content resides.  This field is Required when eEzsigntemplatedocumentSource &#x3D; Url. | [optional] 
**b_ezsigntemplatedocument_forcerepair** | **boolean** | Try to repair the document or flatten it if it cannot be used for electronic signature. | [optional] 
**e_ezsigntemplatedocument_form** | **string** | If the document contains an existing PDF form this property must be set.  **Keep** leaves the form as-is in the document.  **Convert** removes the form and convert all the existing fields to Ezsigntemplateformfieldgroups and assign them to the specified **fkiEzsigntemplatesignerID** | [optional] 
**s_ezsigntemplatedocument_password** | **string** | If the source template is password protected, the password to open/modify it. | [optional] [default to &#39;&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


