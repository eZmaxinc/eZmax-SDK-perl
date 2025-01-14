# EzmaxApi::Object::ContactinformationsRequestCompoundV2

## Load the model package
```perl
use EzmaxApi::Object::ContactinformationsRequestCompoundV2;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e_contactinformations_type** | [**FieldEContactinformationsType**](FieldEContactinformationsType.md) |  | 
**i_address_default** | **int** | The index in the a_objAddress array (zero based index) representing the Address object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_phone_default** | **int** | The index in the a_objPhone array (zero based index) representing the Phone object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_email_default** | **int** | The index in the a_objEmail array (zero based index) representing the Email object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_website_default** | **int** | The index in the a_objWebsite array (zero based index) representing the Website object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**a_obj_address** | [**ARRAY[AddressRequestCompound]**](AddressRequestCompound.md) |  | 
**a_obj_phone** | [**ARRAY[PhoneRequestCompound]**](PhoneRequestCompound.md) |  | 
**a_obj_email** | [**ARRAY[EmailRequestCompound]**](EmailRequestCompound.md) |  | 
**a_obj_website** | [**ARRAY[WebsiteRequestCompound]**](WebsiteRequestCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


