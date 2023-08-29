# EzmaxApi::Object::EzsigndocumentGetObjectV1ResponseMPayload

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentGetObjectV1ResponseMPayload;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | 
**fki_ezsignfolder_id** | **int** | The unique ID of the Ezsignfolder | 
**fki_ezsignfoldersignerassociation_id_declinedtosign** | **int** | The unique ID of the Ezsignfoldersignerassociation | [optional] 
**dt_ezsigndocument_duedate** | **string** | The maximum date and time at which the Ezsigndocument can be signed. | 
**dt_ezsignform_completed** | **string** | The date and time at which the Ezsignform has been completed. | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | [optional] 
**s_ezsigndocument_name** | **string** | The name of the document that will be presented to Ezsignfoldersignerassociations | 
**e_ezsigndocument_step** | [**FieldEEzsigndocumentStep**](FieldEEzsigndocumentStep.md) |  | 
**dt_ezsigndocument_firstsend** | **string** | The date and time when the Ezsigndocument was first sent. | [optional] 
**dt_ezsigndocument_lastsend** | **string** | The date and time when the Ezsigndocument was sent the last time. | [optional] 
**i_ezsigndocument_order** | **int** | The order in which the Ezsigndocument will be presented to the signatory in the Ezsignfolder. | 
**i_ezsigndocument_pagetotal** | **int** | The number of pages in the Ezsigndocument. | 
**i_ezsigndocument_signaturesigned** | **int** | The number of signatures that were signed in the document. | 
**i_ezsigndocument_signaturetotal** | **int** | The number of total signatures that were requested in the Ezsigndocument. | 
**s_ezsigndocument_md5initial** | **string** | MD5 Hash of the initial PDF Document before signatures were applied to it. | [optional] 
**t_ezsigndocument_declinedtosignreason** | **string** | A custom text message that will contain the refusal message if the Ezsigndocument is declined to sign | [optional] 
**s_ezsigndocument_md5signed** | **string** | MD5 Hash of the final PDF Document after all signatures were applied to it. | [optional] 
**b_ezsigndocument_ezsignform** | **boolean** | If the Ezsigndocument contains an Ezsignform or not | [optional] 
**b_ezsigndocument_hassignedsignatures** | **boolean** | If the Ezsigndocument contains signed signatures (From internal or external sources) | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | [optional] 
**s_ezsigndocument_externalid** | **string** | This field can be used to store an External ID from the client&#39;s system.  Anything can be stored in this field, it will never be evaluated by the eZmax system and will be returned AS-IS.  To store multiple values, consider using a JSON formatted structure, a URL encoded string, a CSV or any other custom format.  | [optional] 
**e_ezsigndocument_steptype** | [**ComputedEEzsigndocumentSteptype**](ComputedEEzsigndocumentSteptype.md) |  | 
**i_ezsigndocument_stepformtotal** | **int** | The total number of steps in the form filling phase | 
**i_ezsigndocument_stepformcurrent** | **int** | The current step in the form filling phase | 
**i_ezsigndocument_stepsignaturetotal** | **int** | The total number of steps in the signature filling phase | 
**i_ezsigndocument_stepsignature_current** | **int** | The current step in the signature phase | 
**a_obj_ezsignfoldersignerassociationstatus** | [**ARRAY[CustomEzsignfoldersignerassociationstatusResponse]**](CustomEzsignfoldersignerassociationstatusResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


