# EzmaxApi::Object::EzsignsignatureRequestCompoundAllOf

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignatureRequestCompoundAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**b_ezsignsignature_customdate** | **boolean** | Whether the Ezsignsignature has a custom date format or not. (Only possible when eEzsignsignatureType is \&quot;Name\&quot; or \&quot;Handwritten\&quot;) | [optional] 
**a_obj_ezsignsignaturecustomdate** | [**ARRAY[EzsignsignaturecustomdateRequestCompound]**](EzsignsignaturecustomdateRequestCompound.md) | An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsignsignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


