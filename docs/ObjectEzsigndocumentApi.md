# EzmaxApi::ObjectEzsigndocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigndocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigndocument_apply_ezsigntemplate_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplate_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/applyezsigntemplate | Apply an Ezsigntemplate to the Ezsigndocument.
[**ezsigndocument_apply_ezsigntemplate_v2**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplate_v2) | **POST** /2/object/ezsigndocument/{pkiEzsigndocumentID}/applyEzsigntemplate | Apply an Ezsigntemplate to the Ezsigndocument.
[**ezsigndocument_apply_ezsigntemplateglobal_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplateglobal_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/applyEzsigntemplateglobal | Apply an Ezsigntemplateglobal to the Ezsigndocument.
[**ezsigndocument_create_ezsignelements_positioned_by_word_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_create_ezsignelements_positioned_by_word_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/createEzsignelementsPositionedByWord | Create multiple Ezsignsignatures/Ezsignformfieldgroups
[**ezsigndocument_create_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v1) | **POST** /1/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_create_object_v2**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v2) | **POST** /2/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_create_object_v3**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v3) | **POST** /3/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_decline_to_sign_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_decline_to_sign_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/declineToSign | Decline to sign
[**ezsigndocument_delete_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_delete_object_v1) | **DELETE** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Delete an existing Ezsigndocument
[**ezsigndocument_edit_ezsignannotations_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_ezsignannotations_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID}/editEzsignannotations | Edit multiple Ezsignannotations
[**ezsigndocument_edit_ezsignformfieldgroups_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_ezsignformfieldgroups_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID}/editEzsignformfieldgroups | Edit multiple Ezsignformfieldgroups
[**ezsigndocument_edit_ezsignsignatures_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_ezsignsignatures_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID}/editEzsignsignatures | Edit multiple Ezsignsignatures
[**ezsigndocument_edit_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_object_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Edit an existing Ezsigndocument
[**ezsigndocument_end_prematurely_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_end_prematurely_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/endPrematurely | End prematurely
[**ezsigndocument_extract_text_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_extract_text_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/extractText | Extract text from Ezsigndocument area
[**ezsigndocument_flatten_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_flatten_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/flatten | Flatten
[**ezsigndocument_get_actionable_elements_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_actionable_elements_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getActionableElements | Retrieve actionable elements for the Ezsigndocument
[**ezsigndocument_get_attachments_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_attachments_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getAttachments | Retrieve Ezsigndocument&#39;s Attachments
[**ezsigndocument_get_completed_elements_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_completed_elements_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getCompletedElements | Retrieve completed elements for the Ezsigndocument
[**ezsigndocument_get_download_url_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_download_url_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getDownloadUrl/{eDocumentType} | Retrieve a URL to download documents.
[**ezsigndocument_get_ezsignannotations_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignannotations_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignannotations | Retrieve an existing Ezsigndocument&#39;s Ezsignannotations
[**ezsigndocument_get_ezsigndiscussions_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsigndiscussions_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsigndiscussions | Retrieve an existing Ezsigndocument&#39;s Ezsigndiscussions
[**ezsigndocument_get_ezsignformfieldgroups_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignformfieldgroups_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignformfieldgroups | Retrieve an existing Ezsigndocument&#39;s Ezsignformfieldgroups
[**ezsigndocument_get_ezsignpages_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignpages_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignpages | Retrieve an existing Ezsigndocument&#39;s Ezsignpages
[**ezsigndocument_get_ezsignsignatures_automatic_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignsignatures_automatic_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignsignaturesAutomatic | Retrieve an existing Ezsigndocument&#39;s automatic Ezsignsignatures
[**ezsigndocument_get_ezsignsignatures_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignsignatures_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignsignatures | Retrieve an existing Ezsigndocument&#39;s Ezsignsignatures
[**ezsigndocument_get_form_data_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_form_data_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getFormData | Retrieve an existing Ezsigndocument&#39;s Form Data
[**ezsigndocument_get_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_object_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Retrieve an existing Ezsigndocument
[**ezsigndocument_get_object_v2**](ObjectEzsigndocumentApi.md#ezsigndocument_get_object_v2) | **GET** /2/object/ezsigndocument/{pkiEzsigndocumentID} | Retrieve an existing Ezsigndocument
[**ezsigndocument_get_temporary_proof_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_temporary_proof_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getTemporaryProof | Retrieve the temporary proof
[**ezsigndocument_get_words_positions_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_words_positions_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getWordsPositions | Retrieve positions X,Y of given words from a Ezsigndocument
[**ezsigndocument_patch_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_patch_object_v1) | **PATCH** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Patch an existing Ezsigndocument
[**ezsigndocument_submit_ezsignform_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_submit_ezsignform_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/submitEzsignform | Submit the Ezsignform
[**ezsigndocument_unsend_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_unsend_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/unsend | Unsend the Ezsigndocument


# **ezsigndocument_apply_ezsigntemplate_v1**
> CommonResponse ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_request)

Apply an Ezsigntemplate to the Ezsigndocument.

This function is deprecated. Please use *applyEzsigntemplate* instead which is doing the same thing but with a capital \"E\" to normalize the nomenclature.  This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_apply_ezsigntemplate_v1_request = EzmaxApi::Object::EzsigndocumentApplyEzsigntemplateV1Request->new(); # EzsigndocumentApplyEzsigntemplateV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_apply_ezsigntemplate_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_apply_ezsigntemplate_v1_request** | [**EzsigndocumentApplyEzsigntemplateV1Request**](EzsigndocumentApplyEzsigntemplateV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_apply_ezsigntemplate_v2**
> EzsigndocumentApplyEzsigntemplateV2Response ezsigndocument_apply_ezsigntemplate_v2(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v2_request => $ezsigndocument_apply_ezsigntemplate_v2_request)

Apply an Ezsigntemplate to the Ezsigndocument.

This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_apply_ezsigntemplate_v2_request = EzmaxApi::Object::EzsigndocumentApplyEzsigntemplateV2Request->new(); # EzsigndocumentApplyEzsigntemplateV2Request | 

eval {
    my $result = $api_instance->ezsigndocument_apply_ezsigntemplate_v2(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v2_request => $ezsigndocument_apply_ezsigntemplate_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_apply_ezsigntemplate_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_apply_ezsigntemplate_v2_request** | [**EzsigndocumentApplyEzsigntemplateV2Request**](EzsigndocumentApplyEzsigntemplateV2Request.md)|  | 

### Return type

[**EzsigndocumentApplyEzsigntemplateV2Response**](EzsigndocumentApplyEzsigntemplateV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_apply_ezsigntemplateglobal_v1**
> EzsigndocumentApplyEzsigntemplateglobalV1Response ezsigndocument_apply_ezsigntemplateglobal_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplateglobal_v1_request => $ezsigndocument_apply_ezsigntemplateglobal_v1_request)

Apply an Ezsigntemplateglobal to the Ezsigndocument.

This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_apply_ezsigntemplateglobal_v1_request = EzmaxApi::Object::EzsigndocumentApplyEzsigntemplateglobalV1Request->new(); # EzsigndocumentApplyEzsigntemplateglobalV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_apply_ezsigntemplateglobal_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplateglobal_v1_request => $ezsigndocument_apply_ezsigntemplateglobal_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_apply_ezsigntemplateglobal_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_apply_ezsigntemplateglobal_v1_request** | [**EzsigndocumentApplyEzsigntemplateglobalV1Request**](EzsigndocumentApplyEzsigntemplateglobalV1Request.md)|  | 

### Return type

[**EzsigndocumentApplyEzsigntemplateglobalV1Response**](EzsigndocumentApplyEzsigntemplateglobalV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_create_ezsignelements_positioned_by_word_v1**
> EzsigndocumentCreateEzsignelementsPositionedByWordV1Response ezsigndocument_create_ezsignelements_positioned_by_word_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_create_ezsignelements_positioned_by_word_v1_request => $ezsigndocument_create_ezsignelements_positioned_by_word_v1_request)

Create multiple Ezsignsignatures/Ezsignformfieldgroups

Using this endpoint, you can create multiple Ezsignsignatures/Ezsignformfieldgroups positioned by word at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_create_ezsignelements_positioned_by_word_v1_request = EzmaxApi::Object::EzsigndocumentCreateEzsignelementsPositionedByWordV1Request->new(); # EzsigndocumentCreateEzsignelementsPositionedByWordV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_create_ezsignelements_positioned_by_word_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_create_ezsignelements_positioned_by_word_v1_request => $ezsigndocument_create_ezsignelements_positioned_by_word_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_create_ezsignelements_positioned_by_word_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_create_ezsignelements_positioned_by_word_v1_request** | [**EzsigndocumentCreateEzsignelementsPositionedByWordV1Request**](EzsigndocumentCreateEzsignelementsPositionedByWordV1Request.md)|  | 

### Return type

[**EzsigndocumentCreateEzsignelementsPositionedByWordV1Response**](EzsigndocumentCreateEzsignelementsPositionedByWordV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_create_object_v1**
> EzsigndocumentCreateObjectV1Response ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request => $ezsigndocument_create_object_v1_request)

Create a new Ezsigndocument

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigndocument_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsigndocumentCreateObjectV1Request]->new()]; # ARRAY[EzsigndocumentCreateObjectV1Request] | 

eval {
    my $result = $api_instance->ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request => $ezsigndocument_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigndocument_create_object_v1_request** | [**ARRAY[EzsigndocumentCreateObjectV1Request]**](EzsigndocumentCreateObjectV1Request.md)|  | 

### Return type

[**EzsigndocumentCreateObjectV1Response**](EzsigndocumentCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_create_object_v2**
> EzsigndocumentCreateObjectV2Response ezsigndocument_create_object_v2(ezsigndocument_create_object_v2_request => $ezsigndocument_create_object_v2_request)

Create a new Ezsigndocument

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigndocument_create_object_v2_request = EzmaxApi::Object::EzsigndocumentCreateObjectV2Request->new(); # EzsigndocumentCreateObjectV2Request | 

eval {
    my $result = $api_instance->ezsigndocument_create_object_v2(ezsigndocument_create_object_v2_request => $ezsigndocument_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigndocument_create_object_v2_request** | [**EzsigndocumentCreateObjectV2Request**](EzsigndocumentCreateObjectV2Request.md)|  | 

### Return type

[**EzsigndocumentCreateObjectV2Response**](EzsigndocumentCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_create_object_v3**
> EzsigndocumentCreateObjectV3Response ezsigndocument_create_object_v3(ezsigndocument_create_object_v3_request => $ezsigndocument_create_object_v3_request)

Create a new Ezsigndocument

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigndocument_create_object_v3_request = EzmaxApi::Object::EzsigndocumentCreateObjectV3Request->new(); # EzsigndocumentCreateObjectV3Request | 

eval {
    my $result = $api_instance->ezsigndocument_create_object_v3(ezsigndocument_create_object_v3_request => $ezsigndocument_create_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_create_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigndocument_create_object_v3_request** | [**EzsigndocumentCreateObjectV3Request**](EzsigndocumentCreateObjectV3Request.md)|  | 

### Return type

[**EzsigndocumentCreateObjectV3Response**](EzsigndocumentCreateObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_decline_to_sign_v1**
> CommonResponse ezsigndocument_decline_to_sign_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_decline_to_sign_v1_request => $ezsigndocument_decline_to_sign_v1_request)

Decline to sign

Decline to sign

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_decline_to_sign_v1_request = EzmaxApi::Object::EzsigndocumentDeclineToSignV1Request->new(); # EzsigndocumentDeclineToSignV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_decline_to_sign_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_decline_to_sign_v1_request => $ezsigndocument_decline_to_sign_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_decline_to_sign_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_decline_to_sign_v1_request** | [**EzsigndocumentDeclineToSignV1Request**](EzsigndocumentDeclineToSignV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_delete_object_v1**
> CommonResponse ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Delete an existing Ezsigndocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_edit_ezsignannotations_v1**
> EzsigndocumentEditEzsignannotationsV1Response ezsigndocument_edit_ezsignannotations_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignannotations_v1_request => $ezsigndocument_edit_ezsignannotations_v1_request)

Edit multiple Ezsignannotations

Using this endpoint, you can edit multiple Ezsignannotations at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_edit_ezsignannotations_v1_request = EzmaxApi::Object::EzsigndocumentEditEzsignannotationsV1Request->new(); # EzsigndocumentEditEzsignannotationsV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_edit_ezsignannotations_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignannotations_v1_request => $ezsigndocument_edit_ezsignannotations_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_edit_ezsignannotations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_edit_ezsignannotations_v1_request** | [**EzsigndocumentEditEzsignannotationsV1Request**](EzsigndocumentEditEzsignannotationsV1Request.md)|  | 

### Return type

[**EzsigndocumentEditEzsignannotationsV1Response**](EzsigndocumentEditEzsignannotationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_edit_ezsignformfieldgroups_v1**
> EzsigndocumentEditEzsignformfieldgroupsV1Response ezsigndocument_edit_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignformfieldgroups_v1_request => $ezsigndocument_edit_ezsignformfieldgroups_v1_request)

Edit multiple Ezsignformfieldgroups

Using this endpoint, you can edit multiple Ezsignformfieldgroups at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_edit_ezsignformfieldgroups_v1_request = EzmaxApi::Object::EzsigndocumentEditEzsignformfieldgroupsV1Request->new(); # EzsigndocumentEditEzsignformfieldgroupsV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_edit_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignformfieldgroups_v1_request => $ezsigndocument_edit_ezsignformfieldgroups_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_edit_ezsignformfieldgroups_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_edit_ezsignformfieldgroups_v1_request** | [**EzsigndocumentEditEzsignformfieldgroupsV1Request**](EzsigndocumentEditEzsignformfieldgroupsV1Request.md)|  | 

### Return type

[**EzsigndocumentEditEzsignformfieldgroupsV1Response**](EzsigndocumentEditEzsignformfieldgroupsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_edit_ezsignsignatures_v1**
> EzsigndocumentEditEzsignsignaturesV1Response ezsigndocument_edit_ezsignsignatures_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignsignatures_v1_request => $ezsigndocument_edit_ezsignsignatures_v1_request)

Edit multiple Ezsignsignatures

Using this endpoint, you can edit multiple Ezsignsignatures at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_edit_ezsignsignatures_v1_request = EzmaxApi::Object::EzsigndocumentEditEzsignsignaturesV1Request->new(); # EzsigndocumentEditEzsignsignaturesV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_edit_ezsignsignatures_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_ezsignsignatures_v1_request => $ezsigndocument_edit_ezsignsignatures_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_edit_ezsignsignatures_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_edit_ezsignsignatures_v1_request** | [**EzsigndocumentEditEzsignsignaturesV1Request**](EzsigndocumentEditEzsignsignaturesV1Request.md)|  | 

### Return type

[**EzsigndocumentEditEzsignsignaturesV1Response**](EzsigndocumentEditEzsignsignaturesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_edit_object_v1**
> EzsigndocumentEditObjectV1Response ezsigndocument_edit_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request => $ezsigndocument_edit_object_v1_request)

Edit an existing Ezsigndocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_edit_object_v1_request = EzmaxApi::Object::EzsigndocumentEditObjectV1Request->new(); # EzsigndocumentEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_edit_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request => $ezsigndocument_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_edit_object_v1_request** | [**EzsigndocumentEditObjectV1Request**](EzsigndocumentEditObjectV1Request.md)|  | 

### Return type

[**EzsigndocumentEditObjectV1Response**](EzsigndocumentEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_end_prematurely_v1**
> CommonResponse ezsigndocument_end_prematurely_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body)

End prematurely

End prematurely an Ezsigndocument when some signatures are still required

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigndocument_end_prematurely_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_end_prematurely_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_extract_text_v1**
> EzsigndocumentExtractTextV1Response ezsigndocument_extract_text_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_extract_text_v1_request => $ezsigndocument_extract_text_v1_request)

Extract text from Ezsigndocument area

Extract text from Ezsigndocument area

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_extract_text_v1_request = EzmaxApi::Object::EzsigndocumentExtractTextV1Request->new(); # EzsigndocumentExtractTextV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_extract_text_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_extract_text_v1_request => $ezsigndocument_extract_text_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_extract_text_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_extract_text_v1_request** | [**EzsigndocumentExtractTextV1Request**](EzsigndocumentExtractTextV1Request.md)|  | 

### Return type

[**EzsigndocumentExtractTextV1Response**](EzsigndocumentExtractTextV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_flatten_v1**
> CommonResponse ezsigndocument_flatten_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body)

Flatten

Flatten an Ezsigndocument signatures, forms and annotations. This process finalizes the PDF so that the forms and annotations become part of the document content and cannot be edited.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigndocument_flatten_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_flatten_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_actionable_elements_v1**
> EzsigndocumentGetActionableElementsV1Response ezsigndocument_get_actionable_elements_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve actionable elements for the Ezsigndocument

Return the Ezsignsignatures that can be signed and Ezsignformfieldgroups that can be filled by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_actionable_elements_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_actionable_elements_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetActionableElementsV1Response**](EzsigndocumentGetActionableElementsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_attachments_v1**
> EzsigndocumentGetAttachmentsV1Response ezsigndocument_get_attachments_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve Ezsigndocument's Attachments



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_attachments_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetAttachmentsV1Response**](EzsigndocumentGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_completed_elements_v1**
> EzsigndocumentGetCompletedElementsV1Response ezsigndocument_get_completed_elements_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve completed elements for the Ezsigndocument

Return the completed Ezsignsignatures, Ezsignformfieldgroups and Ezsignannotations at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_completed_elements_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_completed_elements_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetCompletedElementsV1Response**](EzsigndocumentGetCompletedElementsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_download_url_v1**
> EzsigndocumentGetDownloadUrlV1Response ezsigndocument_get_download_url_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, e_document_type => $e_document_type)

Retrieve a URL to download documents.

This endpoint returns URLs to different files that can be downloaded during the signing process.  These links will expire after 5 minutes so the download of the file should be made soon after retrieving the link.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $e_document_type = "e_document_type_example"; # string | The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **SignatureReady** Is the version containing the annotations/form to show the signer. 3. **Signed** Is the final document once all signatures were applied in current document if eEzsignfolderCompletion is PerEzsigndocument.<br>     Is the final document once all signatures were applied in all documents if eEzsignfolderCompletion is PerEzsignfolder. 4. **Proofdocument** Is the evidence report. 5. **Proof** Is the complete evidence archive including all of the above and more. 

eval {
    my $result = $api_instance->ezsigndocument_get_download_url_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, e_document_type => $e_document_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_download_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **e_document_type** | **string**| The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **SignatureReady** Is the version containing the annotations/form to show the signer. 3. **Signed** Is the final document once all signatures were applied in current document if eEzsignfolderCompletion is PerEzsigndocument.&lt;br&gt;     Is the final document once all signatures were applied in all documents if eEzsignfolderCompletion is PerEzsignfolder. 4. **Proofdocument** Is the evidence report. 5. **Proof** Is the complete evidence archive including all of the above and more.  | 

### Return type

[**EzsigndocumentGetDownloadUrlV1Response**](EzsigndocumentGetDownloadUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsignannotations_v1**
> EzsigndocumentGetEzsignannotationsV1Response ezsigndocument_get_ezsignannotations_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Ezsignannotations



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsignannotations_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsignannotations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsignannotationsV1Response**](EzsigndocumentGetEzsignannotationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsigndiscussions_v1**
> EzsigndocumentGetEzsigndiscussionsV1Response ezsigndocument_get_ezsigndiscussions_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Ezsigndiscussions



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsigndiscussions_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsigndiscussions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsigndiscussionsV1Response**](EzsigndocumentGetEzsigndiscussionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsignformfieldgroups_v1**
> EzsigndocumentGetEzsignformfieldgroupsV1Response ezsigndocument_get_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Ezsignformfieldgroups



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsignformfieldgroups_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsignformfieldgroupsV1Response**](EzsigndocumentGetEzsignformfieldgroupsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsignpages_v1**
> EzsigndocumentGetEzsignpagesV1Response ezsigndocument_get_ezsignpages_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Ezsignpages



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsignpages_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsignpages_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsignpagesV1Response**](EzsigndocumentGetEzsignpagesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsignsignatures_automatic_v1**
> EzsigndocumentGetEzsignsignaturesAutomaticV1Response ezsigndocument_get_ezsignsignatures_automatic_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's automatic Ezsignsignatures

Return the Ezsignsignatures that can be signed by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsignsignatures_automatic_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsignsignatures_automatic_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsignsignaturesAutomaticV1Response**](EzsigndocumentGetEzsignsignaturesAutomaticV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_ezsignsignatures_v1**
> EzsigndocumentGetEzsignsignaturesV1Response ezsigndocument_get_ezsignsignatures_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Ezsignsignatures



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_ezsignsignatures_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_ezsignsignatures_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetEzsignsignaturesV1Response**](EzsigndocumentGetEzsignsignaturesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_form_data_v1**
> EzsigndocumentGetFormDataV1Response ezsigndocument_get_form_data_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's Form Data



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_form_data_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_form_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetFormDataV1Response**](EzsigndocumentGetFormDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_object_v1**
> EzsigndocumentGetObjectV1Response ezsigndocument_get_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetObjectV1Response**](EzsigndocumentGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_object_v2**
> EzsigndocumentGetObjectV2Response ezsigndocument_get_object_v2(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_object_v2(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetObjectV2Response**](EzsigndocumentGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_temporary_proof_v1**
> EzsigndocumentGetTemporaryProofV1Response ezsigndocument_get_temporary_proof_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve the temporary proof

Retrieve the temporary proof while the Ezsigndocument is being processed since the proof isn't available until the Ezsigndocument is completed

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigndocument_get_temporary_proof_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_temporary_proof_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 

### Return type

[**EzsigndocumentGetTemporaryProofV1Response**](EzsigndocumentGetTemporaryProofV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_words_positions_v1**
> EzsigndocumentGetWordsPositionsV1Response ezsigndocument_get_words_positions_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_get_words_positions_v1_request => $ezsigndocument_get_words_positions_v1_request)

Retrieve positions X,Y of given words from a Ezsigndocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_get_words_positions_v1_request = EzmaxApi::Object::EzsigndocumentGetWordsPositionsV1Request->new(); # EzsigndocumentGetWordsPositionsV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_get_words_positions_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_get_words_positions_v1_request => $ezsigndocument_get_words_positions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_words_positions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_get_words_positions_v1_request** | [**EzsigndocumentGetWordsPositionsV1Request**](EzsigndocumentGetWordsPositionsV1Request.md)|  | 

### Return type

[**EzsigndocumentGetWordsPositionsV1Response**](EzsigndocumentGetWordsPositionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_patch_object_v1**
> CommonResponse ezsigndocument_patch_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_patch_object_v1_request => $ezsigndocument_patch_object_v1_request)

Patch an existing Ezsigndocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_patch_object_v1_request = EzmaxApi::Object::EzsigndocumentPatchObjectV1Request->new(); # EzsigndocumentPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_patch_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_patch_object_v1_request => $ezsigndocument_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_patch_object_v1_request** | [**EzsigndocumentPatchObjectV1Request**](EzsigndocumentPatchObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_submit_ezsignform_v1**
> CommonResponse ezsigndocument_submit_ezsignform_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_submit_ezsignform_v1_request => $ezsigndocument_submit_ezsignform_v1_request)

Submit the Ezsignform



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $ezsigndocument_submit_ezsignform_v1_request = EzmaxApi::Object::EzsigndocumentSubmitEzsignformV1Request->new(); # EzsigndocumentSubmitEzsignformV1Request | 

eval {
    my $result = $api_instance->ezsigndocument_submit_ezsignform_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_submit_ezsignform_v1_request => $ezsigndocument_submit_ezsignform_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_submit_ezsignform_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **ezsigndocument_submit_ezsignform_v1_request** | [**EzsigndocumentSubmitEzsignformV1Request**](EzsigndocumentSubmitEzsignformV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_unsend_v1**
> CommonResponse ezsigndocument_unsend_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body)

Unsend the Ezsigndocument

Once an Ezsigndocument has been sent to signatories, it cannot be modified.  Using this endpoint, you can unsend the Ezsigndocument and make it modifiable again.  Signatories will receive an email informing them the signature process was aborted and they might receive a new invitation to sign.  ⚠️ Warning: Any signature previously made by signatories on this Ezsigndocumentswill be lost.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigndocument_unsend_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_unsend_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

