# EzmaxApi::Object::InscriptionResponse

## Load the model package
```perl
use EzmaxApi::Object::InscriptionResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_inscription_id** | **int** | The unique ID of the Inscription. | 
**fki_company_id** | **int** | The unique ID of the Company | 
**s_company_name_x** | **string** | The Name of the Company in the language of the requester | [optional] 
**fki_department_id** | **int** | The unique ID of the Department | 
**s_department_name_x** | **string** | The Name of the Department in the language of the requester | [optional] 
**fki_realestateboard_id** | **int** | The unique ID of the Realestateboard | 
**s_realestateboard_name_x** | **string** | The name of the Realestateboard | [optional] 
**fki_address_id** | **int** | The unique ID of the Address | 
**s_address** | **string** | The complete address in a single line | [optional] 
**fki_inscriptionbuildingtype_id** | **int** | The unique ID of the Inscriptionbuildingtype | 
**s_inscriptionbuildingtype_name_x** | **string** | The name of the Inscriptionbuildingtype in the language of the requester | [optional] 
**fki_inscriptiontype_id** | **int** | The unique ID of the Inscriptiontype | 
**s_inscriptiontype_name_x** | **string** | The name of the Inscriptiontype in the language of the requester | [optional] 
**fki_inscriptioncategory_id** | **int** | The unique ID of the Inscriptioncategory | 
**s_inscriptioncategory_name_x** | **string** | The name of the Inscriptioncategory in the language of the requester | [optional] 
**e_inscription_step** | [**FieldEInscriptionStep**](FieldEInscriptionStep.md) |  | 
**e_inscription_residence_type** | [**FieldEInscriptionResidenceType**](FieldEInscriptionResidenceType.md) |  | 
**s_inscription_civicend** | **string** | The civicend of the Inscription | 
**s_inscription_mls** | **string** | The mls of the Inscription | 
**s_inscription_contract** | **string** | The sale contract number | 
**i_inscription_sellerdeclaration** | **int** | The sellerdeclaration of the Inscription | 
**e_inscription_type** | [**FieldEInscriptionType**](FieldEInscriptionType.md) |  | 
**d_inscription_initialsaleprice** | **string** | The initialsaleprice of the Inscription | 
**d_inscription_saleprice** | **string** | The saleprice of the Inscription | 
**d_inscription_rentprice** | **string** | The rentprice of the Inscription | 
**e_inscription_remunerationtype** | [**FieldEInscriptionRemunerationtype**](FieldEInscriptionRemunerationtype.md) |  | 
**e_inscription_remunerationinscriptorsellertype** | [**FieldEInscriptionRemunerationinscriptorsellertype**](FieldEInscriptionRemunerationinscriptorsellertype.md) |  | 
**e_inscription_remunerationreferencetype** | [**FieldEInscriptionRemunerationreferencetype**](FieldEInscriptionRemunerationreferencetype.md) |  | 
**e_inscription_remunerationtotaltype** | [**FieldEInscriptionRemunerationtotaltype**](FieldEInscriptionRemunerationtotaltype.md) |  | 
**d_inscription_remuneration** | **string** | The remuneration of the Inscription | 
**d_inscription_remunerationinscriptorseller** | **string** | The remunerationinscriptorseller of the Inscription | 
**d_inscription_remunerationreference** | **string** | The remunerationreference of the Inscription | 
**d_inscription_remunerationtotal** | **string** | The remunerationtotal of the Inscription | 
**d_inscription_mortgagesold** | **string** | The mortgagesold of the Inscription | 
**dt_inscription_date** | **string** | The date of the Inscription | 
**dt_inscription_cancellationdate** | **string** | The cancellationdate of the Inscription | 
**dt_inscription_initialexpirationdate** | **string** | The initialexpirationdate of the Inscription | 
**dt_inscription_expirationdate** | **string** | The expirationdate of the Inscription | 
**dt_inscription_notarydate** | **string** | The notarydate of the Inscription | 
**dt_inscription_notaryentereddate** | **string** | The notaryentereddate of the Inscription | 
**t_inscription_cadastre** | **string** | The cadastre of the Inscription | 
**b_inscription_reference** | **boolean** | Whether if it&#39;s an reference | 
**b_inscription_inspection** | **boolean** | Whether the inscription can be acces by an inspector | 
**b_inscription_isactive** | **boolean** | Whether the inscription is active or not | 
**t_inscription_checklistnote** | **string** | The checklistnote of the Inscription | 
**b_inscription_new** | **boolean** | Whether if it&#39;s an new | 
**b_inscription_homeowner** | **boolean** | Whether if it&#39;s an homeowner | 
**b_inscription_archived** | **boolean** | Whether the inscription is archived or not | 
**b_inscription_litigation** | **boolean** | Whether if it&#39;s an litigation | 
**b_inscription_repossession** | **boolean** | Whether if it&#39;s an repossession | 
**b_inscription_issolicitation** | **boolean** | Whether if it&#39;s an issolicitation | 
**b_inscription_salebyowner** | **boolean** | Whether if it&#39;s an salebyowner | 
**b_inscription_soldwithoutlegalwarranty** | **boolean** | Whether if it&#39;s an soldwithoutlegalwarranty | 
**i_inscription_constructionyear** | **int** | The constructionyear of the Inscription | 
**i_inscription_unit** | **int** | The unit of the Inscription | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


