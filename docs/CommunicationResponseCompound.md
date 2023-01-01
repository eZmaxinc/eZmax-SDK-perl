# EzmaxApi::Object::CommunicationResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::CommunicationResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_communication_id** | **int** | The unique ID of the Communication. | 
**e_communication_emailimportance** | [**FieldECommunicationEmailimportance**](FieldECommunicationEmailimportance.md) |  | [optional] 
**e_communication_type** | [**FieldECommunicationType**](FieldECommunicationType.md) |  | 
**s_communication_subject** | **string** | The Subject of the Communication | 
**dt_communication_sentdate** | **string** | The send date and time at which the Communication was sent. | 
**obj_contact_from** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 
**a_obj_communicationattachment** | [**ARRAY[CommunicationattachmentResponseCompound]**](CommunicationattachmentResponseCompound.md) |  | 
**a_obj_communicationrecipient** | [**ARRAY[CommunicationrecipientResponseCompound]**](CommunicationrecipientResponseCompound.md) |  | 
**a_obj_communicationexternalrecipient** | [**ARRAY[CommunicationexternalrecipientResponseCompound]**](CommunicationexternalrecipientResponseCompound.md) |  | 
**a_obj_communicationimage** | [**ARRAY[CommunicationimageResponseCompound]**](CommunicationimageResponseCompound.md) |  | 
**a_obj_communicationexternalimage** | [**ARRAY[CommunicationexternalimageResponseCompound]**](CommunicationexternalimageResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


