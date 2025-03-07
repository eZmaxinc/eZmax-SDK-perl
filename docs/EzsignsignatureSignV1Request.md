# EzmaxApi::Object::EzsignsignatureSignV1Request

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignatureSignV1Request;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fki_ezsignsigningreason_id** | **int** | The unique ID of the Ezsignsigningreason | [optional] 
**fki_font_id** | **int** | The unique ID of the Font | [optional] 
**s_value** | **string** | The value required for the Ezsignsignature.  This can only be set if eEzsignsignatureType is **City**, **FieldText** or **FieldTextarea** | [optional] 
**e_attachments_confirmation_decision** | **string** | Whether the attachment are accepted or refused.  This can only be set if eEzsignsignatureType is **AttachmentsConfirmation** | [optional] 
**s_attachments_refusal_reason** | **string** | The reason of refused.  This can only be set if eEzsignsignatureType is **AttachmentsConfirmation** | [optional] 
**s_svg** | **string** | The SVG of the signature.  This can only be set if eEzsignsignatureType is **Signature**/**Initials** and **bIsAutomatic** is false | [optional] 
**a_obj_file** | [**ARRAY[CommonFile]**](CommonFile.md) |  | [optional] 
**obj_creditcard** | [**CustomCreditcardRequest**](CustomCreditcardRequest.md) |  | [optional] 
**b_is_automatic** | **boolean** | Indicates if the Ezsignsignature was part of an automatic process or not.  This can only be true if eEzsignsignatureType is **Acknowledgement**, **City**, **Signature**, **Initials** or **Stamp**.  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


