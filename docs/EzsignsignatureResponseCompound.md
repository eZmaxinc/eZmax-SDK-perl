# EzmaxApi::Object::EzsignsignatureResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignatureResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dt_ezsignsignature_date_in_folder_timezone** | **string** | The date the Ezsignsignature was signed in folder&#39;s timezone | [optional] 
**b_ezsignsignature_customdate** | **boolean** | Whether the Ezsignsignature has a custom date format or not. (Only possible when eEzsignsignatureType is **Name** or **Handwritten**) | [optional] 
**a_obj_ezsignsignaturecustomdate** | [**ARRAY[EzsignsignaturecustomdateResponseCompound]**](EzsignsignaturecustomdateResponse.md) | An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsignsignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all. | [optional] 
**obj_creditcardtransaction** | [**CustomCreditcardtransactionResponse**](CustomCreditcardtransactionResponse.md) |  | [optional] 
**a_obj_ezsignelementdependency** | [**ARRAY[EzsignelementdependencyResponseCompound]**](EzsignelementdependencyResponse.md) |  | [optional] 
**obj_timezone** | [**CustomTimezoneWithCodeResponse**](CustomTimezoneWithCodeResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


