# EzmaxApi::Object::SessionhistoryListElement

## Load the model package
```perl
use EzmaxApi::Object::SessionhistoryListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_sessionhistory_id** | **int** | The unique ID of the Sessionhistory | 
**fki_computer_id** | **int** | The unique ID of the Computer | [optional] 
**fki_user_id** | **int** | The unique ID of the User | [optional] 
**dt_sessionhistory_firsthit** | **string** | The first hit of the Sessionhistory | 
**dt_sessionhistory_lasthit** | **string** | The last hit of the Sessionhistory | 
**e_sessionhistory_endby** | [**FieldESessionhistoryEndby**](FieldESessionhistoryEndby.md) |  | 
**s_computer_description** | **string** | The description of the Computer | [optional] 
**s_sessionhistory_duration** | **string** | The duration of the session | 
**s_sessionhistory_ip** | **string** | Represent an IP address. | 
**s_user_loginname** | **string** | The login name of the User. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


