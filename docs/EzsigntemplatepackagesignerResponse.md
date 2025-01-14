# EzmaxApi::Object::EzsigntemplatepackagesignerResponse

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatepackagesignerResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsigntemplatepackagesigner_id** | **int** | The unique ID of the Ezsigntemplatepackagesigner | 
**fki_ezsigntemplatepackage_id** | **int** | The unique ID of the Ezsigntemplatepackage | 
**fki_ezdoctemplatedocument_id** | **int** | The unique ID of the Ezdoctemplatedocument | [optional] 
**fki_user_id** | **int** | The unique ID of the User | [optional] 
**fki_usergroup_id** | **int** | The unique ID of the Usergroup | [optional] 
**s_ezdoctemplatedocument_name_x** | **string** | The name of the Ezdoctemplatedocument in the language of the requester | [optional] 
**b_ezsigntemplatepackagesigner_receivecopy** | **boolean** | If this flag is true. The signatory will receive a copy of every signed Ezsigndocument even if it ain&#39;t required to sign the document. | [optional] 
**e_ezsigntemplatepackagesigner_mapping** | [**FieldEEzsigntemplatepackagesignerMapping**](FieldEEzsigntemplatepackagesignerMapping.md) |  | [optional] 
**s_ezsigntemplatepackagesigner_description** | **string** | The description of the Ezsigntemplatepackagesigner | 
**s_user_name** | **string** | The description of the User in the language of the requester | [optional] 
**s_usergroup_name_x** | **string** | The Name of the Usergroup in the language of the requester | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


