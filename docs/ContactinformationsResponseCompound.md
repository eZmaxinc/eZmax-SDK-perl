# EzmaxApi::Object::ContactinformationsResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::ContactinformationsResponseCompound;
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
**obj_address_default** | [**AddressResponseCompound**](AddressResponseCompound.md) |  | [optional] 
**obj_phone_default** | [**PhoneResponseCompound**](PhoneResponseCompound.md) |  | [optional] 
**obj_email_default** | [**EmailResponseCompound**](EmailResponseCompound.md) |  | [optional] 
**obj_website_default** | [**WebsiteResponseCompound**](WebsiteResponseCompound.md) |  | [optional] 
**a_obj_address** | [**ARRAY[AddressResponseCompound]**](AddressResponseCompound.md) |  | 
**a_obj_phone** | [**ARRAY[PhoneResponseCompound]**](PhoneResponseCompound.md) |  | 
**a_obj_email** | [**ARRAY[EmailResponseCompound]**](EmailResponseCompound.md) |  | 
**a_obj_website** | [**ARRAY[WebsiteResponseCompound]**](WebsiteResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


