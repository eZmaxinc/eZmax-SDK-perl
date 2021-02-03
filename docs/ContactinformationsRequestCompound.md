# EzmaxApi::Object::ContactinformationsRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::ContactinformationsRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**a_obj_address** | [**ARRAY[AddressRequest]**](AddressRequest.md) |  | 
**a_obj_phone** | [**ARRAY[PhoneRequest]**](PhoneRequest.md) |  | 
**a_obj_email** | [**ARRAY[EmailRequest]**](EmailRequest.md) |  | 
**a_obj_website** | [**ARRAY[WebsiteRequest]**](WebsiteRequest.md) |  | 
**i_address_default** | **int** | The index in the a_objAddress array (zero based index) representing the Address object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_phone_default** | **int** | The index in the a_objPhone array (zero based index) representing the Phone object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_email_default** | **int** | The index in the a_objEmail array (zero based index) representing the Email object that should become the default one.  You can leave the value to 0 if the array is empty. | 
**i_website_default** | **int** | The index in the a_objWebsite array (zero based index) representing the Website object that should become the default one.  You can leave the value to 0 if the array is empty. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


