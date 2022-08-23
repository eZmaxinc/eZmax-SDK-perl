# EzmaxApi::Object::BrandingRequest

## Load the model package
```perl
use EzmaxApi::Object::BrandingRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_branding_id** | **int** | The unique ID of the Branding | [optional] 
**obj_branding_description** | [**MultilingualBrandingDescription**](MultilingualBrandingDescription.md) |  | 
**e_branding_logo** | [**FieldEBrandingLogo**](FieldEBrandingLogo.md) |  | 
**s_branding_base64** | **string** | The Base64 encoded binary content of the branding logo. This need to match image type selected in eBrandingLogo if you supply an image. If you select &#39;Default&#39;, the logo will be deleted and the default one will be used. | [optional] 
**i_branding_colortext** | **int** | The color of the text. This is a RGB color converted into integer | 
**i_branding_colortextlinkbox** | **int** | The color of the text in the link box. This is a RGB color converted into integer | 
**i_branding_colortextbutton** | **int** | The color of the text in the button. This is a RGB color converted into integer | 
**i_branding_colorbackground** | **int** | The color of the background. This is a RGB color converted into integer | 
**i_branding_colorbackgroundbutton** | **int** | The color of the background of the button. This is a RGB color converted into integer | 
**i_branding_colorbackgroundsmallbox** | **int** | The color of the background of the small box. This is a RGB color converted into integer | 
**b_branding_isactive** | **boolean** | Whether the Branding is active or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


