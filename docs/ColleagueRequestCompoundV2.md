# EzmaxApi::Object::ColleagueRequestCompoundV2

## Load the model package
```perl
use EzmaxApi::Object::ColleagueRequestCompoundV2;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_colleague_id** | **int** | The unique ID of the Colleague | [optional] 
**fki_user_id** | **int** | The unique ID of the User | 
**fki_user_id_colleague** | **int** | The unique ID of the User | 
**b_colleague_ezsignemail** | **boolean** | Whether the email can be used by the cloning user in Ezsign | 
**b_colleague_financial** | **boolean** | Whether the cloning user has access to the financial | 
**b_colleague_usecloneemail** | **boolean** | Whether the cloning user has access to the cloned user email to send communications | 
**b_colleague_attachment** | **boolean** | Whether the cloning user has access to the attachment | 
**b_colleague_canafe** | **boolean** | Whether the cloning user has access to canafe | 
**b_colleague_permission** | **boolean** | Whether the cloning user copies the permission of the cloned user | 
**b_colleague_realestatecompleted** | **boolean** | Whether if the cloning user has access to the completed folders in real estate | 
**dt_colleague_from** | **string** | The from of the Colleague | [optional] 
**dt_colleague_to** | **string** | The to of the Colleague | [optional] 
**e_colleague_ezsign** | [**FieldEColleagueEzsign**](FieldEColleagueEzsign.md) |  | 
**e_colleague_realestateinprogress** | [**FieldEColleagueRealestateinprogess**](FieldEColleagueRealestateinprogess.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


