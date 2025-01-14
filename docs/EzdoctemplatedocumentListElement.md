# EzmaxApi::Object::EzdoctemplatedocumentListElement

## Load the model package
```perl
use EzmaxApi::Object::EzdoctemplatedocumentListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezdoctemplatedocument_id** | **int** | The unique ID of the Ezdoctemplatedocument | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | [optional] 
**fki_ezdoctemplatetype_id** | **int** | The unique ID of the Ezdoctemplatetype | 
**fki_ezdoctemplatefieldtypecategory_id** | **int** | The unique ID of the Ezdoctemplatefieldtypecategory | 
**s_ezsignfoldertype_name_x** | **string** | The name of the Ezsignfoldertype in the language of the requester | [optional] 
**s_ezdoctemplatetype_description_x** | **string** | The description of the Ezdoctemplatetype in the language of the requester | [optional] 
**s_ezdoctemplatefieldtypecategory_description_x** | **string** | The description of the Ezdoctemplatefieldtypecategory in the language of the requester | [optional] 
**e_ezdoctemplatedocument_privacylevel** | [**FieldEEzdoctemplatedocumentPrivacylevel**](FieldEEzdoctemplatedocumentPrivacylevel.md) |  | [optional] 
**b_ezdoctemplatedocument_isactive** | **boolean** | Whether the ezdoctemplatedocument is active or not | 
**s_ezdoctemplatedocument_name_x** | **string** | The name of the Ezdoctemplatedocument in the language of the requester | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


