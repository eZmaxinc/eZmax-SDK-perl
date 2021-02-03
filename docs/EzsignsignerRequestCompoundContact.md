# EzmaxApi::Object::EzsignsignerRequestCompoundContact

## Load the model package
```perl
use EzmaxApi::Object::EzsignsignerRequestCompoundContact;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**s_contact_firstname** | **string** | The first name of the Contact | 
**s_contact_lastname** | **string** | The last name of the Contact | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_email_address** | **string** | The email address of the contact. Must be filled if email authentification was requested | [optional] 
**s_phone_number** | **string** | The Phone number of the contact. Use format \&quot;5149901516\&quot; for North American Numbers (Without \&quot;1\&quot; for long distance code) you would dial like this: 1-514-990-1516. Use format \&quot;498945233886\&quot; for international numbers (Without \&quot;011\&quot;) you would dial like this: +49 89 452 33 88-6. In this example \&quot;49\&quot; is the country code of Germany. | [optional] 
**s_phone_number_cell** | **string** | The Cell Phone number of the contact. Use format \&quot;5149901516\&quot; for North American Numbers (Without \&quot;1\&quot; for long distance code) you would dial like this: 1-514-990-1516. Use format \&quot;498945233886\&quot; for international numbers (Without \&quot;011\&quot;) you would dial like this: +49 89 452 33 88-6. In this example \&quot;49\&quot; is the country code of Germany. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


