# EzmaxApi::Object::EzsignsignatureResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignatureResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignsignature_id** | **int** | The unique ID of the Ezsignsignature | 
**fki_ezsigndocument_id** | **int** | The unique ID of the Ezsigndocument | 
**fki_ezsignfoldersignerassociation_id** | **int** | The unique ID of the Ezsignfoldersignerassociation | 
**fki_ezsignsigningreason_id** | **int** | The unique ID of the Ezsignsigningreason | [optional] 
**fki_font_id** | **int** | The unique ID of the Font | [optional] 
**s_currency_description_x** | **string** | The description of the Currency in the language of the requester | [optional] 
**s_ezsignsigningreason_description_x** | **string** | The description of the Ezsignsigningreason in the language of the requester | [optional] 
**i_ezsignpage_pagenumber** | **int** | The page number in the Ezsigndocument | 
**i_ezsignsignature_x** | **int** | The X coordinate (Horizontal) where to put the Ezsignsignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignsignature 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate. | 
**i_ezsignsignature_y** | **int** | The Y coordinate (Vertical) where to put the Ezsignsignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignsignature 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate. | 
**i_ezsignsignature_height** | **int** | The height of the Ezsignsignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsignsignature to have an height of 2 inches, you would use \&quot;200\&quot; for the iEzsignsignatureHeight. | [optional] 
**i_ezsignsignature_width** | **int** | The width of the Ezsignsignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsignsignature to have a width of 2 inches, you would use \&quot;200\&quot; for the iEzsignsignatureWidth. | [optional] 
**i_ezsignsignature_step** | **int** | The step when the Ezsignsigner will be invited to sign | 
**i_ezsignsignature_stepadjusted** | **int** | The step when the Ezsignsigner will be invited to sign | [optional] 
**e_ezsignsignature_type** | [**FieldEEzsignsignatureType**](FieldEEzsignsignatureType.md) |  | 
**t_ezsignsignature_tooltip** | **string** | A tooltip that will be presented to Ezsignsigner about the Ezsignsignature | [optional] 
**e_ezsignsignature_tooltipposition** | [**FieldEEzsignsignatureTooltipposition**](FieldEEzsignsignatureTooltipposition.md) |  | [optional] 
**e_ezsignsignature_font** | [**FieldEEzsignsignatureFont**](FieldEEzsignsignatureFont.md) |  | [optional] 
**i_ezsignsignature_validationstep** | **int** | The step when the Ezsignsigner will be invited to validate the Ezsignsignature of eEzsignsignatureType Attachments | [optional] 
**s_ezsignsignature_attachmentdescription** | **string** | The description attached to the attachment name added in Ezsignsignature of eEzsignsignatureType Attachments | [optional] 
**e_ezsignsignature_attachmentnamesource** | [**FieldEEzsignsignatureAttachmentnamesource**](FieldEEzsignsignatureAttachmentnamesource.md) |  | [optional] 
**e_ezsignsignature_consultationtrigger** | [**FieldEEzsignsignatureConsultationtrigger**](FieldEEzsignsignatureConsultationtrigger.md) |  | [optional] 
**b_ezsignsignature_handwritten** | **boolean** | Whether the Ezsignsignature must be handwritten or not when eEzsignsignatureType &#x3D; Signature. | [optional] 
**b_ezsignsignature_reason** | **boolean** | Whether the Ezsignsignature must include a reason or not when eEzsignsignatureType &#x3D; Signature. | [optional] 
**b_ezsignsignature_required** | **boolean** | Whether the Ezsignsignature is required or not. This field is relevant only with Ezsignsignature with eEzsignsignatureType &#x3D; Attachments, Text or Textarea. | [optional] 
**fki_ezsignfoldersignerassociation_id_validation** | **int** | The unique ID of the Ezsignfoldersignerassociation | [optional] 
**dt_ezsignsignature_date** | **string** | The date the Ezsignsignature was signed | [optional] 
**i_ezsignsignatureattachment_count** | **int** | The count of Ezsignsignatureattachment | [optional] 
**s_ezsignsignature_description** | **string** | The value entered while signing Ezsignsignature of eEzsignsignatureType **City**, **FieldText** and **FieldTextarea** | [optional] 
**i_ezsignsignature_maxlength** | **int** | The maximum length for the value in the Ezsignsignature  This can only be set if eEzsignsignatureType is **FieldText** or **FieldTextarea** | [optional] 
**e_ezsignsignature_textvalidation** | [**EnumTextvalidation**](EnumTextvalidation.md) |  | [optional] 
**s_ezsignsignature_textvalidationcustommessage** | **string** | Description of validation rule. Show by signatory. | [optional] 
**e_ezsignsignature_dependencyrequirement** | [**FieldEEzsignsignatureDependencyrequirement**](FieldEEzsignsignatureDependencyrequirement.md) |  | [optional] 
**s_ezsignsignature_defaultvalue** | **string** | The default value for the Ezsignsignature  You can use the codes below and they will be replaced at signature time.    | Code | Description | Example | | ------------------------- | ------------ | ------------ | | {sUserFirstname} | The first name of the contact | John | | {sUserLastname} | The last name of the contact | Doe | | {sUserJobtitle} | The job title | Sales Representative | | {sCompany} | Company name | eZmax Solutions Inc. | | {sEmailAddress} | The email address | email@example.com | | {sPhoneE164} | A phone number in E.164 Format | +15149901516 | | {sPhoneE164Cell} | A phone number in E.164 Format | +15149901516 | | [optional] 
**s_ezsignsignature_regexp** | **string** | A regular expression to indicate what values are acceptable for the Ezsignsignature.  This can only be set if eEzsignsignatureType is **FieldText** or **FieldTextarea** and eEzsignsignatureTextvalidation is **Custom** | [optional] 
**obj_contact_name** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 
**obj_contact_name_delegation** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | [optional] 
**obj_signature** | [**SignatureResponseCompound**](SignatureResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


