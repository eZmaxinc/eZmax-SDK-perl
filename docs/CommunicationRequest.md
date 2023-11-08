# EzmaxApi::Object::CommunicationRequest

## Load the model package
```perl
use EzmaxApi::Object::CommunicationRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_communication_id** | **int** | The unique ID of the Communication. | [optional] 
**e_communication_importance** | [**FieldECommunicationImportance**](FieldECommunicationImportance.md) |  | [optional] 
**e_communication_type** | [**FieldECommunicationType**](FieldECommunicationType.md) |  | 
**obj_communicationsender** | [**CustomCommunicationsenderRequest**](CustomCommunicationsenderRequest.md) |  | [optional] 
**s_communication_subject** | **string** | The subject of the Communication | [optional] 
**t_communication_body** | **string** | The Body of the Communication | 
**b_communication_private** | **boolean** | Whether the Communication is private or not | 
**e_communication_attachmenttype** | **string** | How the attachment should be included in the email.   Only used if eCommunicationType is **Email** | [optional] 
**i_communication_attachmentlinkexpiration** | **int** | The number of days before the attachment link expired.   Only used if eCommunicationType is **Email** and eCommunicationattachmentType is **Link** | [optional] 
**b_communication_readreceipt** | **boolean** | Whether we ask for a read receipt or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


