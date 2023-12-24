# EzmaxApi::Object::EzsignfoldertypeResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsignfoldertypeResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | 
**obj_ezsignfoldertype_name** | [**MultilingualEzsignfoldertypeName**](MultilingualEzsignfoldertypeName.md) |  | 
**fki_branding_id** | **int** | The unique ID of the Branding | 
**fki_billingentityinternal_id** | **int** | The unique ID of the Billingentityinternal. | [optional] 
**fki_usergroup_id** | **int** | The unique ID of the Usergroup | [optional] 
**fki_usergroup_id_restricted** | **int** | The unique ID of the Usergroup | [optional] 
**fki_ezsigntsarequirement_id** | **int** | The unique ID of the Ezsigntsarequirement.  Determine if a Time Stamping Authority should add a timestamp on each of the signature. Valid values:  |Value|Description| |-|-| |1|No. TSA Timestamping will requested. This will make all signatures a lot faster since no round-trip to the TSA server will be required. Timestamping will be made using eZsign server&#39;s time.| |2|Best effort. Timestamping from a Time Stamping Authority will be requested but is not mandatory. In the very improbable case it cannot be completed, the timestamping will be made using eZsign server&#39;s time. **Additional fee applies**| |3|Mandatory. Timestamping from a Time Stamping Authority will be requested and is mandatory. In the very improbable case it cannot be completed, the signature will fail and the user will be asked to retry. **Additional fee applies**| | [optional] 
**s_branding_description_x** | **string** | The Description of the Branding in the language of the requester | 
**s_billingentityinternal_description_x** | **string** | The description of the Billingentityinternal in the language of the requester | [optional] 
**s_ezsigntsarequirement_description_x** | **string** | The description of the Ezsigntsarequirement in the language of the requester | [optional] 
**s_email_address_signed** | **string** | The email address. | [optional] 
**s_email_address_summary** | **string** | The email address. | [optional] 
**s_usergroup_name_x** | **string** | The Name of the Usergroup in the language of the requester | [optional] 
**s_usergroup_name_x_restricted** | **string** | The Name of the Usergroup in the language of the requester | [optional] 
**e_ezsignfoldertype_privacylevel** | [**FieldEEzsignfoldertypePrivacylevel**](FieldEEzsignfoldertypePrivacylevel.md) |  | 
**e_ezsignfoldertype_sendreminderfrequency** | [**FieldEEzsignfoldertypeSendreminderfrequency**](FieldEEzsignfoldertypeSendreminderfrequency.md) |  | [optional] 
**i_ezsignfoldertype_archivaldays** | **int** | The number of days before the archival of Ezsignfolders created using this Ezsignfoldertype | 
**e_ezsignfoldertype_disposal** | [**FieldEEzsignfoldertypeDisposal**](FieldEEzsignfoldertypeDisposal.md) |  | 
**i_ezsignfoldertype_disposaldays** | **int** | The number of days after the archival before the disposal of the Ezsignfolder | [optional] 
**i_ezsignfoldertype_deadlinedays** | **int** | The number of days to get all Ezsignsignatures | 
**b_ezsignfoldertype_delegate** | **boolean** | Wheter if delegation of signature is allowed to another user or not | [optional] 
**b_ezsignfoldertype_reassign** | **boolean** | Wheter if Reassignment of signature is allowed to another signatory or not | [optional] 
**b_ezsignfoldertype_sendattatchmentsigner** | **boolean** | THIS FIELD WILL BE DELETED. Whether we send the Ezsigndocument and the proof as attachment in the email | [optional] 
**b_ezsignfoldertype_sendsignedtoezsignsigner** | **boolean** | Whether we send an email to Ezsignsigner  when document is completed | [optional] 
**b_ezsignfoldertype_sendsignedtouser** | **boolean** | Whether we send an email to User who signed when document is completed | [optional] 
**b_ezsignfoldertype_sendattachmentezsignsigner** | **boolean** | Whether we send the Ezsigndocument in the email to Ezsignsigner | [optional] 
**b_ezsignfoldertype_sendproofezsignsigner** | **boolean** | Whether we send the proof in the email to Ezsignsigner | [optional] 
**b_ezsignfoldertype_sendattachmentuser** | **boolean** | Whether we send the Ezsigndocument in the email to User | [optional] 
**b_ezsignfoldertype_sendproofuser** | **boolean** | Whether we send the proof in the email to User | [optional] 
**b_ezsignfoldertype_sendproofemail** | **boolean** | Whether we send the proof in the email to external recipient | [optional] 
**b_ezsignfoldertype_allowdownloadattachmentezsignsigner** | **boolean** | Whether we allow the Ezsigndocument to be downloaded by an Ezsignsigner | [optional] 
**b_ezsignfoldertype_allowdownloadproofezsignsigner** | **boolean** | Whether we allow the proof to be downloaded by an Ezsignsigner | [optional] 
**b_ezsignfoldertype_sendproofreceivealldocument** | **boolean** | Whether we send the proof to user and Ezsignsigner who receive all documents. | [optional] 
**b_ezsignfoldertype_sendsignedtodocumentowner** | **boolean** | Whether we send the signed Ezsigndocument to the Ezsigndocument&#39;s owner | 
**b_ezsignfoldertype_sendsignedtofolderowner** | **boolean** | Whether we send the signed Ezsigndocument to the Ezsignfolder&#39;s owner | 
**b_ezsignfoldertype_sendsignedtofullgroup** | **boolean** | Whether we send the signed Ezsigndocument to the Usergroup that has acces to all Ezsignfolders | [optional] 
**b_ezsignfoldertype_sendsignedtolimitedgroup** | **boolean** | THIS FIELD WILL BE DELETED. Whether we send the signed Ezsigndocument to the Usergroup that has acces to only their own Ezsignfolders | [optional] 
**b_ezsignfoldertype_sendsignedtocolleague** | **boolean** | Whether we send the signed Ezsigndocument to the colleagues | 
**b_ezsignfoldertype_sendsummarytodocumentowner** | **boolean** | Whether we send the summary to the Ezsigndocument&#39;s owner | 
**b_ezsignfoldertype_sendsummarytofolderowner** | **boolean** | Whether we send the summary to the Ezsignfolder&#39;s owner | 
**b_ezsignfoldertype_sendsummarytofullgroup** | **boolean** | Whether we send the summary to the Usergroup that has acces to all Ezsignfolders | [optional] 
**b_ezsignfoldertype_sendsummarytolimitedgroup** | **boolean** | Whether we send the summary to the Usergroup that has acces to only their own Ezsignfolders | [optional] 
**b_ezsignfoldertype_sendsummarytocolleague** | **boolean** | Whether we send the summary to the colleagues | 
**b_ezsignfoldertype_includeproofsigner** | **boolean** | THIS FIELD WILL BE DELETED. Whether we include the proof with the signed Ezsigndocument for Ezsignsigners | [optional] 
**b_ezsignfoldertype_includeproofuser** | **boolean** | Whether we include the proof with the signed Ezsigndocument for users | 
**b_ezsignfoldertype_isactive** | **boolean** | Whether the Ezsignfoldertype is active or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


