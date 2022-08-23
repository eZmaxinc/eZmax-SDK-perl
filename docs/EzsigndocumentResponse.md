# EzmaxApi::Object::EzsigndocumentResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fki_ezsignfolder_id** | **int** | The unique ID of the Ezsignfolder | 
**dt_ezsigndocument_duedate** | **string** | The maximum date and time at which the Ezsigndocument can be signed. | 
**dt_ezsignform_completed** | **string** | The date and time at which the Ezsignform has been completed. | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_ezsigndocument_name** | **string** | The name of the document that will be presented to Ezsignfoldersignerassociations | 
**pki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | 
**e_ezsigndocument_step** | [**FieldEEzsigndocumentStep**](FieldEEzsigndocumentStep.md) |  | 
**dt_ezsigndocument_firstsend** | **string** | The date and time when the Ezsigndocument was first sent. | [optional] 
**dt_ezsigndocument_lastsend** | **string** | The date and time when the Ezsigndocument was sent the last time. | [optional] 
**i_ezsigndocument_order** | **int** | The order in which the Ezsigndocument will be presented to the signatory in the Ezsignfolder. | 
**i_ezsigndocument_pagetotal** | **int** | The number of pages in the Ezsigndocument. | 
**i_ezsigndocument_signaturesigned** | **int** | The number of signatures that were signed in the document. | 
**i_ezsigndocument_signaturetotal** | **int** | The number of total signatures that were requested in the Ezsigndocument. | 
**s_ezsigndocument_md5initial** | **string** | MD5 Hash of the initial PDF Document before signatures were applied to it. | 
**s_ezsigndocument_md5signed** | **string** | MD5 Hash of the final PDF Document after all signatures were applied to it. | 
**b_ezsigndocument_ezsignform** | **boolean** | If the Ezsigndocument contains an Ezsignform or not | 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


