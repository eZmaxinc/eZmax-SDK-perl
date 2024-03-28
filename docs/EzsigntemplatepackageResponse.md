# EzmaxApi::Object::EzsigntemplatepackageResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatepackageResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplatepackage_id** | **int** | The unique ID of the Ezsigntemplatepackage | 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_language_name_x** | **string** | The Name of the Language in the language of the requester | 
**s_ezsigntemplatepackage_description** | **string** | The description of the Ezsigntemplatepackage | 
**b_ezsigntemplatepackage_adminonly** | **boolean** | Whether the Ezsigntemplatepackage can be accessed by admin users only (eUserType&#x3D;Normal) | 
**b_ezsigntemplatepackage_needvalidation** | **boolean** | Whether the Ezsignbulksend was automatically modified and needs a manual validation | 
**b_ezsigntemplatepackage_isactive** | **boolean** | Whether the Ezsigntemplatepackage is active or not | 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | 
**b_ezsigntemplatepackage_editallowed** | **boolean** | Whether the Ezsigntemplatepackage if allowed to edit or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


