# EzmaxApi::Object::PhoneResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::PhoneResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_phone_id** | **int** | The unique ID of the Phone. | 
**fki_phonetype_id** | **int** | The unique ID of the Phonetype.  Valid values:  |Value|Description| |-|-| |1|Office| |2|Home| |3|Mobile| |4|Fax| |5|Pager| |6|Toll Free| | 
**e_phone_type** | [**FieldEPhoneType**](FieldEPhoneType.md) |  | [optional] 
**s_phone_e164** | **string** | A phone number in E.164 Format | [optional] 
**s_phone_extension** | **string** | The extension of the phone number.  The extension is the \&quot;123\&quot; section in this sample phone number: (514) 990-1516 x123.  It can also be used with international phone numbers | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


