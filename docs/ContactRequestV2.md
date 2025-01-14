# EzmaxApi::Object::ContactRequestV2

## Load the model package
```perl
use EzmaxApi::Object::ContactRequestV2;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fki_contacttitle_id** | **int** | The unique ID of the Contacttitle.  Valid values:  |Value|Description| |-|-| |1|Ms.| |2|Mr.| |4|(Blank)| |5|Me (For Notaries)| | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**e_contact_type** | [**FieldEContactType**](FieldEContactType.md) |  | 
**s_contact_firstname** | **string** | The First name of the contact | 
**s_contact_lastname** | **string** | The Last name of the contact | 
**s_contact_company** | **string** | The Company name of the contact | [optional] 
**dt_contact_birthdate** | **string** | The Birth Date of the contact | [optional] 
**s_contact_occupation** | **string** | The occupation of the Contact | [optional] 
**t_contact_note** | **string** | The note of the Contact | [optional] 
**b_contact_isactive** | **boolean** | Whether the contact is active or not | [optional] 
**obj_contactinformations** | [**ContactinformationsRequestCompound**](ContactinformationsRequestCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


