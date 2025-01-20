# EzmaxApi::ObjectEzsignfoldersignerassociationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfoldersignerassociationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfoldersignerassociation_create_embedded_url_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_create_embedded_url_v1) | **POST** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/createEmbeddedUrl | Creates an Url to allow embedded signing
[**ezsignfoldersignerassociation_create_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_create_object_v1) | **POST** /1/object/ezsignfoldersignerassociation | Create a new Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_create_object_v2**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_create_object_v2) | **POST** /2/object/ezsignfoldersignerassociation | Create a new Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_delete_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_delete_object_v1) | **DELETE** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Delete an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_edit_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_edit_object_v1) | **PUT** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Edit an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_force_disconnect_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_force_disconnect_v1) | **POST** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/forceDisconnect | Disconnects the Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_get_in_person_login_url_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_in_person_login_url_v1) | **GET** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/getInPersonLoginUrl | Retrieve a Login Url to allow In-Person signing
[**ezsignfoldersignerassociation_get_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_object_v1) | **GET** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Retrieve an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_get_object_v2**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_object_v2) | **GET** /2/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Retrieve an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_patch_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_patch_object_v1) | **PATCH** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Patch an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_reassign_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_reassign_v1) | **POST** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/reassign | Reassign remaining unsigned signatures and forms


# **ezsignfoldersignerassociation_create_embedded_url_v1**
> EzsignfoldersignerassociationCreateEmbeddedUrlV1Response ezsignfoldersignerassociation_create_embedded_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_create_embedded_url_v1_request => $ezsignfoldersignerassociation_create_embedded_url_v1_request)

Creates an Url to allow embedded signing

This endpoint creates an Url that can be used in a browser or embedded in an I-Frame to allow signing.  The signer Login type must be configured as Embedded.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 
my $ezsignfoldersignerassociation_create_embedded_url_v1_request = EzmaxApi::Object::EzsignfoldersignerassociationCreateEmbeddedUrlV1Request->new(); # EzsignfoldersignerassociationCreateEmbeddedUrlV1Request | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_create_embedded_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_create_embedded_url_v1_request => $ezsignfoldersignerassociation_create_embedded_url_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_create_embedded_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 
 **ezsignfoldersignerassociation_create_embedded_url_v1_request** | [**EzsignfoldersignerassociationCreateEmbeddedUrlV1Request**](EzsignfoldersignerassociationCreateEmbeddedUrlV1Request.md)|  | 

### Return type

[**EzsignfoldersignerassociationCreateEmbeddedUrlV1Response**](EzsignfoldersignerassociationCreateEmbeddedUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_create_object_v1**
> EzsignfoldersignerassociationCreateObjectV1Response ezsignfoldersignerassociation_create_object_v1(ezsignfoldersignerassociation_create_object_v1_request => $ezsignfoldersignerassociation_create_object_v1_request)

Create a new Ezsignfoldersignerassociation

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfoldersignerassociation_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignfoldersignerassociationCreateObjectV1Request]->new()]; # ARRAY[EzsignfoldersignerassociationCreateObjectV1Request] | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_create_object_v1(ezsignfoldersignerassociation_create_object_v1_request => $ezsignfoldersignerassociation_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfoldersignerassociation_create_object_v1_request** | [**ARRAY[EzsignfoldersignerassociationCreateObjectV1Request]**](EzsignfoldersignerassociationCreateObjectV1Request.md)|  | 

### Return type

[**EzsignfoldersignerassociationCreateObjectV1Response**](EzsignfoldersignerassociationCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_create_object_v2**
> EzsignfoldersignerassociationCreateObjectV2Response ezsignfoldersignerassociation_create_object_v2(ezsignfoldersignerassociation_create_object_v2_request => $ezsignfoldersignerassociation_create_object_v2_request)

Create a new Ezsignfoldersignerassociation

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfoldersignerassociation_create_object_v2_request = EzmaxApi::Object::EzsignfoldersignerassociationCreateObjectV2Request->new(); # EzsignfoldersignerassociationCreateObjectV2Request | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_create_object_v2(ezsignfoldersignerassociation_create_object_v2_request => $ezsignfoldersignerassociation_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfoldersignerassociation_create_object_v2_request** | [**EzsignfoldersignerassociationCreateObjectV2Request**](EzsignfoldersignerassociationCreateObjectV2Request.md)|  | 

### Return type

[**EzsignfoldersignerassociationCreateObjectV2Response**](EzsignfoldersignerassociationCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_delete_object_v1**
> CommonResponse ezsignfoldersignerassociation_delete_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Delete an existing Ezsignfoldersignerassociation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_delete_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_edit_object_v1**
> CommonResponse ezsignfoldersignerassociation_edit_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_edit_object_v1_request => $ezsignfoldersignerassociation_edit_object_v1_request)

Edit an existing Ezsignfoldersignerassociation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 
my $ezsignfoldersignerassociation_edit_object_v1_request = EzmaxApi::Object::EzsignfoldersignerassociationEditObjectV1Request->new(); # EzsignfoldersignerassociationEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_edit_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_edit_object_v1_request => $ezsignfoldersignerassociation_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 
 **ezsignfoldersignerassociation_edit_object_v1_request** | [**EzsignfoldersignerassociationEditObjectV1Request**](EzsignfoldersignerassociationEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_force_disconnect_v1**
> CommonResponse ezsignfoldersignerassociation_force_disconnect_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, body => $body)

Disconnects the Ezsignfoldersignerassociation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_force_disconnect_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_force_disconnect_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_in_person_login_url_v1**
> EzsignfoldersignerassociationGetInPersonLoginUrlV1Response ezsignfoldersignerassociation_get_in_person_login_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve a Login Url to allow In-Person signing

This endpoint returns a Login Url that can be used in a browser or embedded in an I-Frame to allow in person signing.  The signer Login type must be configured as In-Person.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_get_in_person_login_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_in_person_login_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 

### Return type

[**EzsignfoldersignerassociationGetInPersonLoginUrlV1Response**](EzsignfoldersignerassociationGetInPersonLoginUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_object_v1**
> EzsignfoldersignerassociationGetObjectV1Response ezsignfoldersignerassociation_get_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve an existing Ezsignfoldersignerassociation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_get_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 

### Return type

[**EzsignfoldersignerassociationGetObjectV1Response**](EzsignfoldersignerassociationGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_object_v2**
> EzsignfoldersignerassociationGetObjectV2Response ezsignfoldersignerassociation_get_object_v2(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve an existing Ezsignfoldersignerassociation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_get_object_v2(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 

### Return type

[**EzsignfoldersignerassociationGetObjectV2Response**](EzsignfoldersignerassociationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_patch_object_v1**
> CommonResponse ezsignfoldersignerassociation_patch_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_patch_object_v1_request => $ezsignfoldersignerassociation_patch_object_v1_request)

Patch an existing Ezsignfoldersignerassociation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 
my $ezsignfoldersignerassociation_patch_object_v1_request = EzmaxApi::Object::EzsignfoldersignerassociationPatchObjectV1Request->new(); # EzsignfoldersignerassociationPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_patch_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_patch_object_v1_request => $ezsignfoldersignerassociation_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 
 **ezsignfoldersignerassociation_patch_object_v1_request** | [**EzsignfoldersignerassociationPatchObjectV1Request**](EzsignfoldersignerassociationPatchObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_reassign_v1**
> CommonResponse ezsignfoldersignerassociation_reassign_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_reassign_v1_request => $ezsignfoldersignerassociation_reassign_v1_request)

Reassign remaining unsigned signatures and forms

Reassign remaining unsigned signatures and forms

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | 
my $ezsignfoldersignerassociation_reassign_v1_request = EzmaxApi::Object::EzsignfoldersignerassociationReassignV1Request->new(); # EzsignfoldersignerassociationReassignV1Request | 

eval {
    my $result = $api_instance->ezsignfoldersignerassociation_reassign_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id, ezsignfoldersignerassociation_reassign_v1_request => $ezsignfoldersignerassociation_reassign_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_reassign_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**|  | 
 **ezsignfoldersignerassociation_reassign_v1_request** | [**EzsignfoldersignerassociationReassignV1Request**](EzsignfoldersignerassociationReassignV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

