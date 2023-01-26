# EzmaxApi::Object::CommunicationResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::CommunicationResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_communication_id** | **int** | The unique ID of the Communication. | 
**e_communication_importance** | [**FieldECommunicationImportance**](FieldECommunicationImportance.md) |  | 
**e_communication_type** | [**FieldECommunicationType**](FieldECommunicationType.md) |  | 
**s_communication_subject** | **string** | The subject of the Communication | 
**e_communication_direction** | [**ComputedECommunicationDirection**](ComputedECommunicationDirection.md) |  | 
**i_communicationrecipient_count** | **int** | The count of Communicationrecipient | 
**obj_contact_from** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 
**a_obj_communicationattachment** | [**ARRAY[CommunicationattachmentResponseCompound]**](CommunicationattachmentResponseCompound.md) |  | 
**a_obj_communicationrecipient** | [**ARRAY[CommunicationrecipientResponseCompound]**](CommunicationrecipientResponseCompound.md) |  | 
**a_obj_communicationexternalrecipient** | [**ARRAY[CommunicationexternalrecipientResponseCompound]**](CommunicationexternalrecipientResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


