# EzmaxApi::ObjectSignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signature_create_object_v1**](ObjectSignatureApi.md#signature_create_object_v1) | **POST** /1/object/signature | Create a new Signature
[**signature_delete_object_v1**](ObjectSignatureApi.md#signature_delete_object_v1) | **DELETE** /1/object/signature/{pkiSignatureID} | Delete an existing Signature
[**signature_edit_object_v1**](ObjectSignatureApi.md#signature_edit_object_v1) | **PUT** /1/object/signature/{pkiSignatureID} | Edit an existing Signature
[**signature_get_object_v2**](ObjectSignatureApi.md#signature_get_object_v2) | **GET** /2/object/signature/{pkiSignatureID} | Retrieve an existing Signature
[**signature_get_object_v3**](ObjectSignatureApi.md#signature_get_object_v3) | **GET** /3/object/signature/{pkiSignatureID} | Retrieve an existing Signature
[**signature_get_svg_initials_v1**](ObjectSignatureApi.md#signature_get_svg_initials_v1) | **GET** /1/object/signature/{pkiSignatureID}/getSVGInitials | Retrieve an existing Signature initial SVG
[**signature_get_svg_signature_v1**](ObjectSignatureApi.md#signature_get_svg_signature_v1) | **GET** /1/object/signature/{pkiSignatureID}/getSVGSignature | Retrieve an existing Signature SVG


# **signature_create_object_v1**
> SignatureCreateObjectV1Response signature_create_object_v1(signature_create_object_v1_request => $signature_create_object_v1_request)

Create a new Signature

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $signature_create_object_v1_request = EzmaxApi::Object::SignatureCreateObjectV1Request->new(); # SignatureCreateObjectV1Request | 

eval {
    my $result = $api_instance->signature_create_object_v1(signature_create_object_v1_request => $signature_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_create_object_v1_request** | [**SignatureCreateObjectV1Request**](SignatureCreateObjectV1Request.md)|  | 

### Return type

[**SignatureCreateObjectV1Response**](SignatureCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_delete_object_v1**
> CommonResponse signature_delete_object_v1(pki_signature_id => $pki_signature_id)

Delete an existing Signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature

eval {
    my $result = $api_instance->signature_delete_object_v1(pki_signature_id => $pki_signature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_edit_object_v1**
> CommonResponse signature_edit_object_v1(pki_signature_id => $pki_signature_id, signature_edit_object_v1_request => $signature_edit_object_v1_request)

Edit an existing Signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature
my $signature_edit_object_v1_request = EzmaxApi::Object::SignatureEditObjectV1Request->new(); # SignatureEditObjectV1Request | 

eval {
    my $result = $api_instance->signature_edit_object_v1(pki_signature_id => $pki_signature_id, signature_edit_object_v1_request => $signature_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 
 **signature_edit_object_v1_request** | [**SignatureEditObjectV1Request**](SignatureEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_get_object_v2**
> SignatureGetObjectV2Response signature_get_object_v2(pki_signature_id => $pki_signature_id)

Retrieve an existing Signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature

eval {
    my $result = $api_instance->signature_get_object_v2(pki_signature_id => $pki_signature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 

### Return type

[**SignatureGetObjectV2Response**](SignatureGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_get_object_v3**
> SignatureGetObjectV3Response signature_get_object_v3(pki_signature_id => $pki_signature_id)

Retrieve an existing Signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature

eval {
    my $result = $api_instance->signature_get_object_v3(pki_signature_id => $pki_signature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_get_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 

### Return type

[**SignatureGetObjectV3Response**](SignatureGetObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_get_svg_initials_v1**
> signature_get_svg_initials_v1(pki_signature_id => $pki_signature_id)

Retrieve an existing Signature initial SVG



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature

eval {
    $api_instance->signature_get_svg_initials_v1(pki_signature_id => $pki_signature_id);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_get_svg_initials_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signature_get_svg_signature_v1**
> signature_get_svg_signature_v1(pki_signature_id => $pki_signature_id)

Retrieve an existing Signature SVG



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSignatureApi;
my $api_instance = EzmaxApi::ObjectSignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_signature_id = 56; # int | The unique ID of the Signature

eval {
    $api_instance->signature_get_svg_signature_v1(pki_signature_id => $pki_signature_id);
};
if ($@) {
    warn "Exception when calling ObjectSignatureApi->signature_get_svg_signature_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_signature_id** | **int**| The unique ID of the Signature | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

