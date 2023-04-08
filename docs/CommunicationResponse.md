# EzmaxApi::Object::CommunicationResponse

## Load the model package
```perl
use EzmaxApi::Object::CommunicationResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_communication_id** | **int** | The unique ID of the Communication. | 
**e_communication_importance** | [**FieldECommunicationImportance**](FieldECommunicationImportance.md) |  | 
**e_communication_type** | [**FieldECommunicationType**](FieldECommunicationType.md) |  | 
**s_communication_subject** | **string** | The subject of the Communication | 
**s_communication_bodyurl** | **string** | The url of the body used as body in the Communication | [optional] 
**e_communication_direction** | [**ComputedECommunicationDirection**](ComputedECommunicationDirection.md) |  | 
**i_communicationrecipient_count** | **int** | The count of Communicationrecipient | 
**obj_descriptionstatic_sender** | [**DescriptionstaticResponse**](DescriptionstaticResponse.md) |  | [optional] 
**obj_emailstatic_sender** | [**EmailstaticResponse**](EmailstaticResponse.md) |  | [optional] 
**obj_phonestatic_sender** | [**PhonestaticResponse**](PhonestaticResponse.md) |  | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


