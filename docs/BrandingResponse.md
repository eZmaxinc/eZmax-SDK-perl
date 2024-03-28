# EzmaxApi::Object::BrandingResponse

## Load the model package
```perl
use EzmaxApi::Object::BrandingResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_branding_id** | **int** | The unique ID of the Branding | 
**fki_email_id** | **int** | The unique ID of the Email | [optional] 
**obj_branding_description** | [**MultilingualBrandingDescription**](MultilingualBrandingDescription.md) |  | 
**s_branding_description_x** | **string** | The Description of the Branding in the language of the requester | 
**s_branding_name** | **string** | The name of the Branding  This value will only be set if you wish to overwrite the default name. If you want to keep the default name, leave this property empty | [optional] 
**s_email_address** | **string** | The email address. | [optional] 
**e_branding_logo** | [**FieldEBrandingLogo**](FieldEBrandingLogo.md) |  | 
**e_branding_logointerface** | [**FieldEBrandingLogointerface**](FieldEBrandingLogointerface.md) |  | [optional] 
**i_branding_colortext** | **int** | The color of the text. This is a RGB color converted into integer | 
**i_branding_colortextlinkbox** | **int** | The color of the text in the link box. This is a RGB color converted into integer | 
**i_branding_colortextbutton** | **int** | The color of the text in the button. This is a RGB color converted into integer | 
**i_branding_colorbackground** | **int** | The color of the background. This is a RGB color converted into integer | 
**i_branding_colorbackgroundbutton** | **int** | The color of the background of the button. This is a RGB color converted into integer | 
**i_branding_colorbackgroundsmallbox** | **int** | The color of the background of the small box. This is a RGB color converted into integer | 
**i_branding_interfacecolor** | **int** | The color of the interface. This is a RGB color converted into integer | [optional] 
**b_branding_isactive** | **boolean** | Whether the Branding is active or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


