# EzmaxApi::Object::CustomEzsignfoldertypeResponse

## Load the model package
```perl
use EzmaxApi::Object::CustomEzsignfoldertypeResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | 
**fki_font_id_annotation** | **int** | The unique ID of the Font | [optional] 
**fki_font_id_formfield** | **int** | The unique ID of the Font | [optional] 
**fki_font_id_signature** | **int** | The unique ID of the Font | [optional] 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | [optional] 
**b_ezsignfoldertype_sendproofezsignsigner** | **boolean** | Whether we send the proof in the email to Ezsignsigner | [optional] 
**b_ezsignfoldertype_allowdownloadattachmentezsignsigner** | **boolean** | Whether we allow the Ezsigndocument to be downloaded by an Ezsignsigner | [optional] 
**b_ezsignfoldertype_allowdownloadproofezsignsigner** | **boolean** | Whether we allow the proof to be downloaded by an Ezsignsigner | [optional] 
**b_ezsignfoldertype_automaticsignature** | **boolean** | Whether we allow the automatic signature by an User | [optional] 
**b_ezsignfoldertype_delegate** | **boolean** | Wheter if delegation of signature is allowed to another user or not | [optional] 
**b_ezsignfoldertype_discussion** | **boolean** | Wheter if creating a new Discussion is allowed or not | [optional] 
**b_ezsignfoldertype_reassignezsignsigner** | **boolean** | Wheter if Reassignment of signature is allowed by a signatory to another signatory or not | [optional] 
**b_ezsignfoldertype_reassignuser** | **boolean** | Wheter if Reassignment of signature is allowed by a user to a signatory or another user or not | [optional] 
**b_ezsignfoldertype_reassigngroup** | **boolean** | Wheter if Reassignment of signatures of the groups to which the user belongs is authorized by a user to himself | [optional] 
**i_ezsignfoldertype_deadlinedays** | **int** | The number of days to get all Ezsignsignatures | [optional] 
**i_ezsignfoldertype_fontsizeannotation** | **int** | Font size for annotations | [optional] 
**i_ezsignfoldertype_fontsizeformfield** | **int** | Font size for form fields | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


