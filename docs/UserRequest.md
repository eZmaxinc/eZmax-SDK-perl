# EzmaxApi::Object::UserRequest

## Load the model package
```perl
use EzmaxApi::Object::UserRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_user_id** | **int** | The unique ID of the User | [optional] 
**fki_agent_id** | **int** | The unique ID of the Agent. | [optional] 
**fki_broker_id** | **int** | The unique ID of the Broker. | [optional] 
**fki_assistant_id** | **int** | The unique ID of the Assistant. | [optional] 
**fki_employee_id** | **int** | The unique ID of the Employee. | [optional] 
**fki_company_id_default** | **int** | The unique ID of the Company | 
**fki_department_id_default** | **int** | The unique ID of the Department | 
**fki_timezone_id** | **int** | The unique ID of the Timezone | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**obj_email** | [**EmailRequestCompound**](EmailRequestCompound.md) |  | 
**fki_billingentityinternal_id** | **int** | The unique ID of the Billingentityinternal. | 
**obj_phone_home** | [**PhoneRequestCompound**](PhoneRequestCompound.md) |  | [optional] 
**obj_phone_sms** | [**PhoneRequestCompound**](PhoneRequestCompound.md) |  | [optional] 
**fki_secretquestion_id** | **int** | The unique ID of the Secretquestion.  Valid values:  |Value|Description| |-|-| |1|The name of the hospital in which you were born| |2|The name of your grade school| |3|The last name of your favorite teacher| |4|Your favorite sports team| |5|Your favorite TV show| |6|Your favorite movie| |7|The name of the street on which you grew up| |8|The name of your first employer| |9|Your first car| |10|Your favorite food| |11|The name of your first pet| |12|Favorite musician/band| |13|What instrument you play| |14|Your father&#39;s middle name| |15|Your mother&#39;s maiden name| |16|Name of your eldest child| |17|Your spouse&#39;s middle name| |18|Favorite restaurant| |19|Childhood nickname| |20|Favorite vacation destination| |21|Your boat&#39;s name| |22|Date of Birth (YYYY-MM-DD)| |22|Secret Code| |22|Your reference code| | [optional] 
**s_user_secretresponse** | **string** | The answer to the Secretquestion | [optional] 
**fki_module_id_form** | **int** | The unique ID of the Module | [optional] 
**e_user_type** | [**FieldEUserType**](FieldEUserType.md) |  | 
**e_user_logintype** | [**FieldEUserLogintype**](FieldEUserLogintype.md) |  | 
**s_user_firstname** | **string** | The first name of the user | 
**s_user_lastname** | **string** | The last name of the user | 
**s_user_loginname** | **string** | The login name of the User. | 
**s_user_jobtitle** | **string** | The job title of the user | [optional] 
**e_user_ezsignaccess** | [**FieldEUserEzsignaccess**](FieldEUserEzsignaccess.md) |  | 
**b_user_isactive** | **boolean** | Whether the User is active or not | 
**b_user_validatebyadministration** | **boolean** | Whether if the transactions in which the User is implicated must be validated by administrative personnel or not | [optional] 
**b_user_validatebydirector** | **boolean** | Whether if the transactions in which the User is implicated must be validated by a director or not | [optional] 
**b_user_attachmentautoverified** | **boolean** | Whether if Attachments uploaded by the User must be validated or not | [optional] 
**b_user_changepassword** | **boolean** | Whether if the User is forced to change its password | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


