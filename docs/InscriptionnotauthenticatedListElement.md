# EzmaxApi::Object::InscriptionnotauthenticatedListElement

## Load the model package
```perl
use EzmaxApi::Object::InscriptionnotauthenticatedListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_inscription_id** | **int** | The unique ID of the Inscription. | 
**pki_inscriptionnotauthenticated_id** | **int** | The unique ID of the Inscriptionnotauthenticated. | [optional] 
**fki_inscriptiontype_id** | **int** | The unique ID of the Inscriptiontype | 
**s_inscriptiontype_name_x** | **string** | The name of the Inscriptiontype in the language of the requester | 
**e_inscription_step** | [**FieldEInscriptionStep**](FieldEInscriptionStep.md) |  | 
**s_inscription_civicend** | **string** | The civicend of the Inscription | 
**s_inscription_mls** | **string** | The mls of the Inscription | [optional] 
**d_inscription_saleprice** | **string** | The saleprice of the Inscription | 
**d_inscription_rentprice** | **string** | The rentprice of the Inscription | 
**dt_inscription_date** | **string** | The date of the Inscription | [optional] 
**dt_inscription_expirationdate** | **string** | The expirationdate of the Inscription | [optional] 
**dt_inscription_notarydate** | **string** | The notarydate of the Inscription | [optional] 
**b_inscription_inspection** | **boolean** | Whether the inscription can be acces by an inspector | [optional] 
**b_inscription_isactive** | **boolean** | Whether the inscription is active or not | 
**b_inscription_archived** | **boolean** | Whether the inscription is archived or not | 
**dt_inscriptionnotauthenticated_notaryscheduledate** | **string** | The notaryscheduledate of the Inscriptionnotauthenticated | [optional] 
**dt_inscriptionnotauthenticated_transactiondate** | **string** | The transactiondate of the Inscriptionnotauthenticated | [optional] 
**dt_inscriptionnotauthenticated_transactiondate_real** | **string** | The transactiondatereal of the Inscriptionnotauthenticated | [optional] 
**b_inscriptionnotauthenticated_conditional** | **boolean** | Whether the inscriptionnotauthenticated is conditional | [optional] 
**b_inscriptionnotauthenticated_isactive** | **boolean** | Whether the inscriptionnotauthenticated is active or not | [optional] 
**s_address_civic** | **string** | The Civic number. | [optional] 
**s_address_street** | **string** | The Street Name | [optional] 
**s_address_suite** | **string** | The Suite or appartment number | [optional] 
**s_address_city** | **string** | The City name | [optional] 
**s_address_zip** | **string** | The Postal/Zip Code  The value must be entered without spaces | [optional] 
**s_province_name_x** | **string** | The name of the Province in the language of the requester | [optional] 
**s_country_name_x** | **string** | The name of the Country in the language of the requester | [optional] 
**s_inscriptionnotauthenticated_offertopurchasenumber** | **string** | The Offer to purchase number | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


