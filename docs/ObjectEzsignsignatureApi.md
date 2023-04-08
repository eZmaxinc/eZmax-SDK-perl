# EzmaxApi::ObjectEzsignsignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignsignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsignature_create_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_create_object_v1) | **POST** /1/object/ezsignsignature | Create a new Ezsignsignature
[**ezsignsignature_create_object_v2**](ObjectEzsignsignatureApi.md#ezsignsignature_create_object_v2) | **POST** /2/object/ezsignsignature | Create a new Ezsignsignature
[**ezsignsignature_delete_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_delete_object_v1) | **DELETE** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Delete an existing Ezsignsignature
[**ezsignsignature_edit_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_edit_object_v1) | **PUT** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Edit an existing Ezsignsignature
[**ezsignsignature_get_ezsignsignatures_automatic_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_get_ezsignsignatures_automatic_v1) | **GET** /1/object/ezsignsignature/getEzsignsignaturesAutomatic | Retrieve all automatic Ezsignsignatures
[**ezsignsignature_get_object_v2**](ObjectEzsignsignatureApi.md#ezsignsignature_get_object_v2) | **GET** /2/object/ezsignsignature/{pkiEzsignsignatureID} | Retrieve an existing Ezsignsignature
[**ezsignsignature_sign_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_sign_v1) | **POST** /1/object/ezsignsignature/{pkiEzsignsignatureID}/sign | Sign the Ezsignsignature


# **ezsignsignature_create_object_v1**
> EzsignsignatureCreateObjectV1Response ezsignsignature_create_object_v1(ezsignsignature_create_object_v1_request => $ezsignsignature_create_object_v1_request)

Create a new Ezsignsignature

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsignature_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignsignatureCreateObjectV1Request]->new()]; # ARRAY[EzsignsignatureCreateObjectV1Request] | 

eval {
    my $result = $api_instance->ezsignsignature_create_object_v1(ezsignsignature_create_object_v1_request => $ezsignsignature_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignature_create_object_v1_request** | [**ARRAY[EzsignsignatureCreateObjectV1Request]**](EzsignsignatureCreateObjectV1Request.md)|  | 

### Return type

[**EzsignsignatureCreateObjectV1Response**](EzsignsignatureCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_create_object_v2**
> EzsignsignatureCreateObjectV2Response ezsignsignature_create_object_v2(ezsignsignature_create_object_v2_request => $ezsignsignature_create_object_v2_request)

Create a new Ezsignsignature

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsignature_create_object_v2_request = EzmaxApi::Object::EzsignsignatureCreateObjectV2Request->new(); # EzsignsignatureCreateObjectV2Request | 

eval {
    my $result = $api_instance->ezsignsignature_create_object_v2(ezsignsignature_create_object_v2_request => $ezsignsignature_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignature_create_object_v2_request** | [**EzsignsignatureCreateObjectV2Request**](EzsignsignatureCreateObjectV2Request.md)|  | 

### Return type

[**EzsignsignatureCreateObjectV2Response**](EzsignsignatureCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_delete_object_v1**
> EzsignsignatureDeleteObjectV1Response ezsignsignature_delete_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id)

Delete an existing Ezsignsignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignsignature_delete_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**|  | 

### Return type

[**EzsignsignatureDeleteObjectV1Response**](EzsignsignatureDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_edit_object_v1**
> EzsignsignatureEditObjectV1Response ezsignsignature_edit_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_edit_object_v1_request => $ezsignsignature_edit_object_v1_request)

Edit an existing Ezsignsignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | 
my $ezsignsignature_edit_object_v1_request = EzmaxApi::Object::EzsignsignatureEditObjectV1Request->new(); # EzsignsignatureEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsignature_edit_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_edit_object_v1_request => $ezsignsignature_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**|  | 
 **ezsignsignature_edit_object_v1_request** | [**EzsignsignatureEditObjectV1Request**](EzsignsignatureEditObjectV1Request.md)|  | 

### Return type

[**EzsignsignatureEditObjectV1Response**](EzsignsignatureEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_get_ezsignsignatures_automatic_v1**
> EzsignsignatureGetEzsignsignaturesAutomaticV1Response ezsignsignature_get_ezsignsignatures_automatic_v1()

Retrieve all automatic Ezsignsignatures

Return all the Ezsignsignatures that can be signed by the current user

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->ezsignsignature_get_ezsignsignatures_automatic_v1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_get_ezsignsignatures_automatic_v1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EzsignsignatureGetEzsignsignaturesAutomaticV1Response**](EzsignsignatureGetEzsignsignaturesAutomaticV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_get_object_v2**
> EzsignsignatureGetObjectV2Response ezsignsignature_get_object_v2(pki_ezsignsignature_id => $pki_ezsignsignature_id)

Retrieve an existing Ezsignsignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignsignature_get_object_v2(pki_ezsignsignature_id => $pki_ezsignsignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**|  | 

### Return type

[**EzsignsignatureGetObjectV2Response**](EzsignsignatureGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_sign_v1**
> EzsignsignatureSignV1Response ezsignsignature_sign_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_sign_v1_request => $ezsignsignature_sign_v1_request)

Sign the Ezsignsignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | 
my $ezsignsignature_sign_v1_request = EzmaxApi::Object::EzsignsignatureSignV1Request->new(); # EzsignsignatureSignV1Request | 

eval {
    my $result = $api_instance->ezsignsignature_sign_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_sign_v1_request => $ezsignsignature_sign_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_sign_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**|  | 
 **ezsignsignature_sign_v1_request** | [**EzsignsignatureSignV1Request**](EzsignsignatureSignV1Request.md)|  | 

### Return type

[**EzsignsignatureSignV1Response**](EzsignsignatureSignV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

