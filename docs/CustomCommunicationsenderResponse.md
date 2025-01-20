# EzmaxApi::Object::CustomCommunicationsenderResponse

## Load the model package
```perl
use EzmaxApi::Object::CustomCommunicationsenderResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fki_agent_id** | **int** | The unique ID of the Agent. | [optional] 
**fki_broker_id** | **int** | The unique ID of the Broker. | [optional] 
**fki_user_id** | **int** | The unique ID of the User | [optional] 
**fki_mailboxshared_id** | **int** | The unique ID of the Mailboxshared | [optional] 
**fki_phonelineshared_id** | **int** | The unique ID of the Phonelineshared | [optional] 
**e_communicationsender_objecttype** | **string** |  | 
**obj_contact_name** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 
**obj_email** | [**EmailResponse**](EmailResponse.md) | An Email Object and children to create a complete structure | [optional] 
**obj_phone_fax** | [**PhoneResponseCompound**](PhoneResponseCompound.md) |  | [optional] 
**obj_phone_sms** | [**PhoneResponseCompound**](PhoneResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


