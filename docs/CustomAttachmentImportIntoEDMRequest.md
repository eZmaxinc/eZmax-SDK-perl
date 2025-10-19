# EzmaxApi::Object::CustomAttachmentImportIntoEDMRequest

## Load the model package
```perl
use EzmaxApi::Object::CustomAttachmentImportIntoEDMRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e_attachment_source** | **string** | The source of the Attachment | 
**fki_attachment_id** | **int** | The unique ID of the Attachment. | [optional] 
**fki_inscriptionchecklist_id** | **int** | The unique ID of the Inscriptionchecklist | [optional] 
**s_attachment_url** | **string** | The url of the file to import | [optional] 
**s_attachment_base64** | **string** | The Base64 encoded binary content of the attachment. | [optional] 
**s_attachment_name** | **string** | The name of the Attachment | 
**s_attachment_category** | **string** | The attachment category | 
**e_attachment_privacy** | [**FieldEAttachmentPrivacy**](FieldEAttachmentPrivacy.md) |  | 
**fki_user_id_specific** | **int** | The unique ID of the User | [optional] 
**s_attachment_md5** | **string** | The MD5 of the Attachment | [optional] 
**b_attachment_forceoverwrite** | **boolean** | Whether we force an overwrite of an existing file | [optional] 
**b_attachment_forcerestore** | **boolean** | Whether we force a restore of a deleted file | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


