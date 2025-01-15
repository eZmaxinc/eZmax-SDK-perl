# EzmaxApi::Object::DiscussionResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::DiscussionResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_discussion_id** | **int** | The unique ID of the Discussion | 
**s_discussion_description** | **string** | The description of the Discussion | 
**b_discussion_closed** | **boolean** | Whether if it&#39;s an closed | 
**dt_discussion_lastread** | **string** | The date the Discussion was last read | [optional] 
**i_discussionmessage_count** | **int** | The count of Attachment. | 
**i_discussionmessage_countunread** | **int** | The count of Attachment. | 
**obj_discussionconfiguration** | **object** | A Custom Discussionconfiguration Object | [optional] 
**a_obj_discussionmembership** | [**ARRAY[DiscussionmembershipResponseCompound]**](DiscussionmembershipResponseCompound.md) |  | 
**a_obj_discussionmessage** | [**ARRAY[DiscussionmessageResponseCompound]**](DiscussionmessageResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


