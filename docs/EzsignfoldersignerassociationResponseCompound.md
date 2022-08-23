# EzmaxApi::Object::EzsignfoldersignerassociationResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsignfoldersignerassociationResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignfoldersignerassociation_id** | **int** | The unique ID of the Ezsignfoldersignerassociation | 
**fki_ezsignfolder_id** | **int** | The unique ID of the Ezsignfolder | 
**b_ezsignfoldersignerassociation_receivecopy** | **boolean** | If this flag is true. The signatory will receive a copy of every signed Ezsigndocument even if it ain&#39;t required to sign the document. | 
**t_ezsignfoldersignerassociation_message** | **string** | A custom text message that will be added to the email sent. | 
**obj_user** | [**EzsignfoldersignerassociationResponseCompoundUser**](EzsignfoldersignerassociationResponseCompoundUser.md) |  | [optional] 
**obj_ezsignsigner** | [**EzsignsignerResponseCompound**](EzsignsignerResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


