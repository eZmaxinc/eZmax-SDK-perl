# EzmaxApi::Object::DiscussionmessageResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::DiscussionmessageResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_discussionmessage_id** | **int** | The unique ID of the Discussionmessage | 
**fki_discussion_id** | **int** | The unique ID of the Discussion | 
**fki_discussionmembership_id** | **int** | The unique ID of the Discussionmembership | [optional] 
**fki_discussionmembership_id_actionrequired** | **int** | The unique ID of the Discussionmembership | [optional] 
**e_discussionmessage_status** | [**FieldEDiscussionmessageStatus**](FieldEDiscussionmessageStatus.md) |  | 
**t_discussionmessage_content** | **string** | The content of the Discussionmessage | 
**s_discussionmessage_creatorname** | **string** | The name the creator of the Discussionmessage. | 
**s_discussionmessage_actionrequiredname** | **string** | The name the Actionrequired of the Discussionmessage. | [optional] 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


