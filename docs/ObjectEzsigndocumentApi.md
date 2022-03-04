# EzmaxApi::ObjectEzsigndocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigndocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigndocument_apply_ezsigntemplate_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplate_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/applyezsigntemplate | Apply an Ezsign Template to the Ezsigndocument.
[**ezsigndocument_apply_ezsigntemplate_v2**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplate_v2) | **POST** /2/object/ezsigndocument/{pkiEzsigndocumentID}/applyEzsigntemplate | Apply an Ezsign Template to the Ezsigndocument.
[**ezsigndocument_create_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v1) | **POST** /1/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_create_object_v2**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v2) | **POST** /2/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_delete_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_delete_object_v1) | **DELETE** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Delete an existing Ezsigndocument
[**ezsigndocument_edit_ezsignformfieldgroups_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_ezsignformfieldgroups_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID}/editEzsignformfieldgroups | Edit multiple Ezsignformfieldgroups
[**ezsigndocument_edit_ezsignsignatures_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_edit_ezsignsignatures_v1) | **PUT** /1/object/ezsigndocument/{pkiEzsigndocumentID}/editEzsignsignatures | Edit multiple Ezsignsignatures
[**ezsigndocument_end_prematurely_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_end_prematurely_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/endPrematurely | End prematurely
[**ezsigndocument_get_download_url_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_download_url_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getDownloadUrl/{eDocumentType} | Retrieve a URL to download documents.
[**ezsigndocument_get_ezsignformfieldgroups_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignformfieldgroups_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignformfieldgroups | Retrieve an existing Ezsigndocument&#39;s Ezsignformfieldgroups
[**ezsigndocument_get_ezsignpages_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignpages_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignpages | Retrieve an existing Ezsigndocument&#39;s Ezsignpages
[**ezsigndocument_get_ezsignsignatures_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_ezsignsignatures_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getEzsignsignatures | Retrieve an existing Ezsigndocument&#39;s Ezsignsignatures
[**ezsigndocument_get_form_data_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_form_data_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getFormData | Retrieve an existing Ezsigndocument&#39;s Form Data
[**ezsigndocument_get_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_object_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Retrieve an existing Ezsigndocument
[**ezsigndocument_get_temporary_proof_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_temporary_proof_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getTemporaryProof | Retrieve the temporary proof
[**ezsigndocument_get_words_positions_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_words_positions_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getWordsPositions | Retrieve positions X,Y of given words from a Ezsigndocument
[**ezsigndocument_patch_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_patch_object_v1) | **PATCH** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Patch an existing Ezsigndocument


# **ezsigndocument_apply_ezsigntemplate_v1**
> EzsigndocumentApplyEzsigntemplateV1Response ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_request)

Apply an Ezsign Template to the Ezsigndocument.

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

[**EzsigndocumentApplyEzsigntemplateV1Response**](EzsigndocumentApplyEzsigntemplateV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_apply_ezsigntemplate_v2**
> EzsigndocumentApplyEzsigntemplateV2Response ezsigndocument_apply_ezsigntemplate_v2(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v2_request => $ezsigndocument_apply_ezsigntemplate_v2_request)

Apply an Ezsign Template to the Ezsigndocument.

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

# **ezsigndocument_delete_object_v1**
> EzsigndocumentDeleteObjectV1Response ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

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

[**EzsigndocumentDeleteObjectV1Response**](EzsigndocumentDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **ezsigndocument_end_prematurely_v1**
> EzsigndocumentEndPrematurelyV1Response ezsigndocument_end_prematurely_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, body => $body)

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

[**EzsigndocumentEndPrematurelyV1Response**](EzsigndocumentEndPrematurelyV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
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
my $e_document_type = "e_document_type_example"; # string | The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more. 

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
 **e_document_type** | **string**| The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more.  | 

### Return type

[**EzsigndocumentGetDownloadUrlV1Response**](EzsigndocumentGetDownloadUrlV1Response.md)

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
> EzsigndocumentPatchObjectV1Response ezsigndocument_patch_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_patch_object_v1_request => $ezsigndocument_patch_object_v1_request)

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

[**EzsigndocumentPatchObjectV1Response**](EzsigndocumentPatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

