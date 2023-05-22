# EzmaxApi::Object::EzsignsignatureResponseCompoundAllOf

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignatureResponseCompoundAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**b_ezsignsignature_customdate** | **boolean** | Whether the Ezsignsignature has a custom date format or not. (Only possible when eEzsignsignatureType is **Name** or **Handwritten**) | [optional] 
**a_obj_ezsignsignaturecustomdate** | [**ARRAY[EzsignsignaturecustomdateResponseCompound]**](EzsignsignaturecustomdateResponseCompound.md) | An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsignsignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all. | [optional] 
**obj_creditcardtransaction** | [**CustomCreditcardtransactionResponse**](CustomCreditcardtransactionResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


