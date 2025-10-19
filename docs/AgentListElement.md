# EzmaxApi::Object::AgentListElement

## Load the model package
```perl
use EzmaxApi::Object::AgentListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_agent_id** | **int** | The unique ID of the Agent. | 
**fki_agenttype_id** | **int** | The unique ID of the Agenttype | 
**s_agenttype_name_x** | **string** | The name of the Agenttype in the language of the requester | 
**fki_agentincorporation_id** | **int** | The unique ID of the Agentincorporation. | [optional] 
**s_agentincorporation_name** | **string** | The name of the Agentincorporation | [optional] 
**fki_department_id** | **int** | The unique ID of the Department | 
**s_department_name_x** | **string** | The Name of the Department in the language of the requester | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_language_name_x** | **string** | The Name of the Language in the language of the requester | 
**s_realestateboardnumber_number** | **string** | The number of the Realestateboardnumber | [optional] 
**s_agent_code** | **string** | The code of the Agent | 
**i_agent_photocopiercode** | **int** | The photocopiercode of the Agent | 
**i_agent_longdistancecode** | **int** | The longdistancecode of the Agent | 
**i_agent_bannernumber** | **int** | The bannernumber of the Agent | 
**s_agent_realestateassociationlicense** | **string** | The realestateassociationlicense of the Agent | 
**dt_agent_hiredate** | **string** | The hiredate of the Agent | [optional] 
**dt_agent_leavedate** | **string** | The leavedate of the Agent | [optional] 
**b_agent_tranquillit** | **boolean** | Whether if it&#39;s an tranquillit | 
**b_agent_residentiallicense** | **boolean** | Whether if it&#39;s an residentiallicense | 
**b_agent_commerciallicense** | **boolean** | Whether if it&#39;s an commerciallicense | 
**b_agent_mortgagelicense** | **boolean** | Whether if it&#39;s an mortgagelicense | 
**b_agent_paidbyofficetranquillit** | **boolean** | Whether if it&#39;s an paidbyofficetranquillit | 
**dt_agent_fintraccertification** | **string** | The fintraccertification of the Agent | [optional] 
**b_agent_isactive** | **boolean** | Whether the Agent is active or not | 
**s_contact_firstname** | **string** | The First name of the contact | 
**s_contact_lastname** | **string** | The Last name of the contact | 
**dt_contact_birthdate** | **string** | The Birth Date of the contact | [optional] 
**s_email_address** | **string** | The email address. | [optional] 
**s_phone_e164** | **string** | A phone number in E.164 Format | [optional] 
**s_address_civic** | **string** | The Civic number. | [optional] 
**s_address_street** | **string** | The Street Name | [optional] 
**s_address_suite** | **string** | The Suite or appartment number | [optional] 
**s_address_city** | **string** | The City name | [optional] 
**s_address_zip** | **string** | The Postal/Zip Code  The value must be entered without spaces | [optional] 
**s_province_name_x** | **string** | The name of the Province in the language of the requester | [optional] 
**s_country_name_x** | **string** | The name of the Country in the language of the requester | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


