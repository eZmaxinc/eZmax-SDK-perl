# EzmaxApi::Object::ContactinformationsResponse

## Load the model package
```perl
use EzmaxApi::Object::ContactinformationsResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_contactinformations_id** | **int** | The unique ID of the Contactinformations | 
**fki_address_id_default** | **int** | The unique ID of the Address | [optional] 
**fki_phone_id_default** | **int** | The unique ID of the Phone. | [optional] 
**fki_email_id_default** | **int** | The unique ID of the Email | [optional] 
**fki_website_id_default** | **int** | The unique ID of the Website Default | [optional] 
**e_contactinformations_type** | [**FieldEContactinformationsType**](FieldEContactinformationsType.md) |  | 
**s_contactinformations_url** | **string** | The url of the Contactinformations | [optional] 
**obj_address_default** | [**AddressResponse**](AddressResponse.md) | An Address Object and children to create a complete structure | [optional] 
**obj_phone_default** | [**PhoneResponseCompound**](PhoneResponseCompound.md) |  | [optional] 
**obj_email_default** | [**EmailResponse**](EmailResponse.md) | An Email Object and children to create a complete structure | [optional] 
**obj_website_default** | [**WebsiteResponse**](WebsiteResponse.md) | A Website Object and children to create a complete structure | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


