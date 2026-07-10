# EzmaxApi::Object::InscriptionnotauthenticatedResponse

## Load the model package
```perl
use EzmaxApi::Object::InscriptionnotauthenticatedResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_inscriptionnotauthenticated_id** | **int** | The unique ID of the Inscriptionnotauthenticated. | 
**fki_company_id** | **int** | The unique ID of the Company | 
**s_company_name_x** | **string** | The Name of the Company in the language of the requester | [optional] 
**fki_inscription_id** | **int** | The unique ID of the Inscription. | 
**fki_department_id** | **int** | The unique ID of the Department | 
**s_department_name_x** | **string** | The Name of the Department in the language of the requester | [optional] 
**fki_financialinstitution_id** | **int** | The unique ID of the Financialinstitution | 
**s_financialinstitution_name_x** | **string** | The name of the Financialinstitution in the language of the requester | [optional] 
**fki_buyercontract_id** | **int** | The unique ID of the Buyercontract | 
**s_buyercontract_contract** | **string** | The number of the Buyercontract | [optional] 
**fki_mortgagesupplier_id** | **int** | The unique ID of the Mortgagesupplier | 
**s_mortgagesupplier_name_x** | **string** | The name of the Mortagesupplier in the language of the requester | [optional] 
**fki_taxassignment_id** | **int** | The unique ID of the Taxassignment.  Valid values:  |Value|Description| |-|-| |1|No tax| |2|GST| |3|HST (ON)| |4|HST (NB)| |5|HST (NS)| |6|HST (NL)| |7|HST (PE)| |8|GST + QST (QC)| |9|GST + QST (QC) Non-Recoverable| |10|GST + PST (BC)| |11|GST + PST (SK)| |12|GST + RST (MB)| |13|GST + PST (BC) Non-Recoverable| |14|GST + PST (SK) Non-Recoverable| |15|GST + RST (MB) Non-Recoverable| | 
**s_taxassignment_description_x** | **string** | The description of the Taxassignment  in the language of the requester | [optional] 
**dt_inscriptionnotauthenticated_transactiondate** | **string** | The transactiondate of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_transactiondate_real** | **string** | The transactiondatereal of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_depositdate** | **string** | The depositdate of the Inscriptionnotauthenticated | 
**e_inscriptionnotauthenticated_type** | [**FieldEInscriptionnotauthenticatedType**](FieldEInscriptionnotauthenticatedType.md) |  | 
**d_inscriptionnotauthenticated_mortgageloan** | **string** | The mortgageloan of the Inscriptionnotauthenticated | 
**et_inscriptionnotauthenticated_mortgagetype** | [**FieldEtInscriptionnotauthenticatedMortgagetype**](FieldEtInscriptionnotauthenticatedMortgagetype.md) |  | 
**d_inscriptionnotauthenticated_transactionprice** | **string** | The transactionprice of the Inscriptionnotauthenticated | 
**e_inscriptionnotauthenticated_remunerationtype** | [**FieldEInscriptionnotauthenticatedRemunerationtype**](FieldEInscriptionnotauthenticatedRemunerationtype.md) |  | 
**d_inscriptionnotauthenticated_remuneration** | **string** | The remuneration of the Inscriptionnotauthenticated | 
**d_inscriptionnotauthenticated_remunerationsubtotal** | **string** | The remunerationsubtotal of the Inscriptionnotauthenticated | 
**d_inscriptionnotauthenticated_remunerationtotal** | **string** | The remunerationtotal of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_cancellationdate** | **string** | The cancellationdate of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_possessiondate** | **string** | The possessiondate of the Inscriptionnotauthenticated | 
**s_inscriptionnotauthenticated_offertopurchasenumber** | **string** | The Offer to purchase number | 
**dt_inscriptionnotauthenticated_notaryscheduledate** | **string** | The notaryscheduledate of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_financingscheduledate** | **string** | The financingscheduledate of the Inscriptionnotauthenticated | 
**b_inscriptionnotauthenticated_conditional** | **boolean** | Whether the inscriptionnotauthenticated is conditional | 
**b_inscriptionnotauthenticated_mortgageisreferenced** | **boolean** | Whether if it&#39;s an mortgageisreferenced | 
**b_inscriptionnotauthenticated_homeowner** | **boolean** | Whether if it&#39;s an homeowner | 
**t_inscriptionnotauthenticated_conditions** | **string** | The conditions of the Inscriptionnotauthenticated | 
**dt_inscriptionnotauthenticated_conditiondeadlinedate** | **string** | The conditiondeadlinedate of the Inscriptionnotauthenticated | 
**i_inscriptionnotauthenticated_order** | **int** | The order of the Inscriptionnotauthenticated | 
**b_inscriptionnotauthenticated_isactive** | **boolean** | Whether the inscriptionnotauthenticated is active or not | 
**e_inscriptionnotauthenticated_residence_type** | [**FieldEInscriptionnotauthenticatedResidenceType**](FieldEInscriptionnotauthenticatedResidenceType.md) |  | 
**t_inscriptionnotauthenticated_checklistnote** | **string** | The checklistnote of the Inscriptionnotauthenticated | 
**d_inscriptionnotauthenticated_selleronlyretribution** | **string** | The selleronlyretribution of the Inscriptionnotauthenticated | 
**b_inscriptionnotauthenticated_draft** | **boolean** | Whether the inscriptionnotauthenticated is a draft or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


