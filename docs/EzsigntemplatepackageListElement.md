# EzmaxApi::Object::EzsigntemplatepackageListElement

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatepackageListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplatepackage_id** | **int** | The unique ID of the Ezsigntemplatepackage | 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_ezsigntemplatepackage_description** | **string** | The description of the Ezsigntemplatepackage | 
**b_ezsigntemplatepackage_isactive** | **boolean** | Whether the Ezsigntemplatepackage is active or not | 
**b_ezsigntemplatepackage_needvalidation** | **boolean** | Whether the Ezsignbulksend was automatically modified and needs a manual validation | 
**i_ezsigntemplatepackagemembership** | **int** | The total number of Ezsigntemplatepackagemembership in the Ezsigntemplatepackage | 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


