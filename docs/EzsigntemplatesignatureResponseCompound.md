# EzmaxApi::Object::EzsigntemplatesignatureResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatesignatureResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**b_ezsigntemplatesignature_customdate** | **boolean** | Whether the Ezsigntemplatesignature has a custom date format or not. (Only possible when eEzsigntemplatesignatureType is **Name** or **Handwritten**) | [optional] 
**a_obj_ezsigntemplatesignaturecustomdate** | [**ARRAY[EzsigntemplatesignaturecustomdateResponseCompound]**](EzsigntemplatesignaturecustomdateResponse.md) | An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsigntemplatesignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all. | [optional] 
**a_obj_ezsigntemplateelementdependency** | [**ARRAY[EzsigntemplateelementdependencyResponseCompound]**](EzsigntemplateelementdependencyResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


