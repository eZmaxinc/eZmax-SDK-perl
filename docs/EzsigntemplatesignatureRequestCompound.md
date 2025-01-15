# EzmaxApi::Object::EzsigntemplatesignatureRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatesignatureRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplatesignature_id** | **int** | The unique ID of the Ezsigntemplatesignature | [optional] 
**fki_ezsigntemplatedocument_id** | **int** | The unique ID of the Ezsigntemplatedocument | 
**fki_ezsigntemplatesigner_id** | **int** | The unique ID of the Ezsigntemplatesigner | 
**fki_ezsigntemplatesigner_id_validation** | **int** | The unique ID of the Ezsigntemplatesigner | [optional] 
**b_ezsigntemplatesignature_handwritten** | **boolean** | Whether the Ezsigntemplatesignature must be handwritten or not when eEzsigntemplatesignatureType &#x3D; Signature. | [optional] 
**b_ezsigntemplatesignature_reason** | **boolean** | Whether the Ezsigntemplatesignature must include a reason or not when eEzsigntemplatesignatureType &#x3D; Signature. | [optional] 
**e_ezsigntemplatesignature_positioning** | [**FieldEEzsigntemplatesignaturePositioning**](FieldEEzsigntemplatesignaturePositioning.md) |  | [optional] 
**i_ezsigntemplatedocumentpage_pagenumber** | **int** | The page number in the Ezsigntemplatedocument | 
**i_ezsigntemplatesignature_x** | **int** | The X coordinate (Horizontal) where to put the Ezsigntemplatesignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplatesignature 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate. | [optional] 
**i_ezsigntemplatesignature_y** | **int** | The Y coordinate (Vertical) where to put the Ezsigntemplatesignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplatesignature 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate. | [optional] 
**i_ezsigntemplatesignature_width** | **int** | The width of the Ezsigntemplatesignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsigntemplatesignature to have a width of 2 inches, you would use \&quot;200\&quot; for the iEzsigntemplatesignatureWidth. | [optional] 
**i_ezsigntemplatesignature_height** | **int** | The height of the Ezsigntemplatesignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsigntemplatesignature to have an height of 2 inches, you would use \&quot;200\&quot; for the iEzsigntemplatesignatureHeight. | [optional] 
**i_ezsigntemplatesignature_step** | **int** | The step when the Ezsigntemplatesigner will be invited to sign | 
**e_ezsigntemplatesignature_type** | [**FieldEEzsigntemplatesignatureType**](FieldEEzsigntemplatesignatureType.md) |  | 
**e_ezsigntemplatesignature_consultationtrigger** | [**FieldEEzsigntemplatesignatureConsultationtrigger**](FieldEEzsigntemplatesignatureConsultationtrigger.md) |  | [optional] 
**t_ezsigntemplatesignature_tooltip** | **string** | A tooltip that will be presented to Ezsigntemplatesigner about the Ezsigntemplatesignature | [optional] 
**e_ezsigntemplatesignature_tooltipposition** | [**FieldEEzsigntemplatesignatureTooltipposition**](FieldEEzsigntemplatesignatureTooltipposition.md) |  | [optional] 
**e_ezsigntemplatesignature_font** | [**FieldEEzsigntemplatesignatureFont**](FieldEEzsigntemplatesignatureFont.md) |  | [optional] 
**b_ezsigntemplatesignature_required** | **boolean** | Whether the Ezsigntemplatesignature is required or not. This field is relevant only with Ezsigntemplatesignature with eEzsigntemplatesignatureType &#x3D; Attachments. | [optional] 
**e_ezsigntemplatesignature_attachmentnamesource** | [**FieldEEzsigntemplatesignatureAttachmentnamesource**](FieldEEzsigntemplatesignatureAttachmentnamesource.md) |  | [optional] 
**s_ezsigntemplatesignature_attachmentdescription** | **string** | The description attached to the attachment name added in Ezsigntemplatesignature of eEzsigntemplatesignatureType Attachments | [optional] 
**i_ezsigntemplatesignature_validationstep** | **int** | The step when the Ezsigntemplatesigner will be invited to validate the Ezsigntemplatesignature of eEzsigntemplatesignatureType Attachments | [optional] 
**i_ezsigntemplatesignature_maxlength** | **int** | The maximum length for the value in the Ezsigntemplatesignature  This can only be set if eEzsigntemplatesignatureType is **FieldText** or **FieldTextarea** | [optional] 
**s_ezsigntemplatesignature_defaultvalue** | **string** | The default value for the Ezsigntemplatesignature  You can use the codes below and they will be replaced at signature time.    | Code | Description | Example | | ------------------------- | ------------ | ------------ | | {sUserFirstname} | The first name of the contact | John | | {sUserLastname} | The last name of the contact | Doe | | {sUserJobtitle} | The job title | Sales Representative | | {sCompany} | Company name | eZmax Solutions Inc. | | {sEmailAddress} | The email address | email@example.com | | {sPhoneE164} | A phone number in E.164 Format | +15149901516 | | {sPhoneE164Cell} | A phone number in E.164 Format | +15149901516 | | [optional] 
**s_ezsigntemplatesignature_regexp** | **string** | A regular expression to indicate what values are acceptable for the Ezsigntemplatesignature.  This can only be set if eEzsigntemplatesignatureType is **Text** or **Textarea** | [optional] 
**e_ezsigntemplatesignature_textvalidation** | [**EnumTextvalidation**](EnumTextvalidation.md) |  | [optional] 
**s_ezsigntemplatesignature_textvalidationcustommessage** | **string** | Description of validation rule. Show by signatory. | [optional] 
**e_ezsigntemplatesignature_dependencyrequirement** | [**FieldEEzsigntemplatesignatureDependencyrequirement**](FieldEEzsigntemplatesignatureDependencyrequirement.md) |  | [optional] 
**s_ezsigntemplatesignature_positioningpattern** | **string** | The string pattern to search for the positioning. **This is not a regexp**  This will be required if **eEzsigntemplatesignaturePositioning** is set to **PerCoordinates** | [optional] 
**i_ezsigntemplatesignature_positioningoffsetx** | **int** | The offset X  This will be required if **eEzsigntemplatesignaturePositioning** is set to **PerCoordinates** | [optional] 
**i_ezsigntemplatesignature_positioningoffsety** | **int** | The offset Y  This will be required if **eEzsigntemplatesignaturePositioning** is set to **PerCoordinates** | [optional] 
**e_ezsigntemplatesignature_positioningoccurence** | [**FieldEEzsigntemplatesignaturePositioningoccurence**](FieldEEzsigntemplatesignaturePositioningoccurence.md) |  | [optional] 
**b_ezsigntemplatesignature_customdate** | **boolean** | Whether the Ezsigntemplatesignature has a custom date format or not. (Only possible when eEzsigntemplatesignatureType is **Name** or **Handwritten**) | [optional] 
**a_obj_ezsigntemplatesignaturecustomdate** | [**ARRAY[EzsigntemplatesignaturecustomdateRequestCompound]**](EzsigntemplatesignaturecustomdateRequest.md) | An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsigntemplatesignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all. | [optional] 
**a_obj_ezsigntemplateelementdependency** | [**ARRAY[EzsigntemplateelementdependencyRequestCompound]**](EzsigntemplateelementdependencyRequest.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


