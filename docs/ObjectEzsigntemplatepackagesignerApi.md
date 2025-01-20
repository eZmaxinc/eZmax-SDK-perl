# EzmaxApi::ObjectEzsigntemplatepackagesignerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatepackagesignerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatepackagesigner_create_object_v1**](ObjectEzsigntemplatepackagesignerApi.md#ezsigntemplatepackagesigner_create_object_v1) | **POST** /1/object/ezsigntemplatepackagesigner | Create a new Ezsigntemplatepackagesigner
[**ezsigntemplatepackagesigner_delete_object_v1**](ObjectEzsigntemplatepackagesignerApi.md#ezsigntemplatepackagesigner_delete_object_v1) | **DELETE** /1/object/ezsigntemplatepackagesigner/{pkiEzsigntemplatepackagesignerID} | Delete an existing Ezsigntemplatepackagesigner
[**ezsigntemplatepackagesigner_edit_object_v1**](ObjectEzsigntemplatepackagesignerApi.md#ezsigntemplatepackagesigner_edit_object_v1) | **PUT** /1/object/ezsigntemplatepackagesigner/{pkiEzsigntemplatepackagesignerID} | Edit an existing Ezsigntemplatepackagesigner
[**ezsigntemplatepackagesigner_get_object_v2**](ObjectEzsigntemplatepackagesignerApi.md#ezsigntemplatepackagesigner_get_object_v2) | **GET** /2/object/ezsigntemplatepackagesigner/{pkiEzsigntemplatepackagesignerID} | Retrieve an existing Ezsigntemplatepackagesigner


# **ezsigntemplatepackagesigner_create_object_v1**
> EzsigntemplatepackagesignerCreateObjectV1Response ezsigntemplatepackagesigner_create_object_v1(ezsigntemplatepackagesigner_create_object_v1_request => $ezsigntemplatepackagesigner_create_object_v1_request)

Create a new Ezsigntemplatepackagesigner

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepackagesigner_create_object_v1_request = EzmaxApi::Object::EzsigntemplatepackagesignerCreateObjectV1Request->new(); # EzsigntemplatepackagesignerCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesigner_create_object_v1(ezsigntemplatepackagesigner_create_object_v1_request => $ezsigntemplatepackagesigner_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignerApi->ezsigntemplatepackagesigner_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepackagesigner_create_object_v1_request** | [**EzsigntemplatepackagesignerCreateObjectV1Request**](EzsigntemplatepackagesignerCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepackagesignerCreateObjectV1Response**](EzsigntemplatepackagesignerCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesigner_delete_object_v1**
> EzsigntemplatepackagesignerDeleteObjectV1Response ezsigntemplatepackagesigner_delete_object_v1(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id)

Delete an existing Ezsigntemplatepackagesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesigner_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesigner_delete_object_v1(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignerApi->ezsigntemplatepackagesigner_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesigner_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagesignerDeleteObjectV1Response**](EzsigntemplatepackagesignerDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesigner_edit_object_v1**
> CommonResponse ezsigntemplatepackagesigner_edit_object_v1(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id, ezsigntemplatepackagesigner_edit_object_v1_request => $ezsigntemplatepackagesigner_edit_object_v1_request)

Edit an existing Ezsigntemplatepackagesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesigner_id = 56; # int | 
my $ezsigntemplatepackagesigner_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatepackagesignerEditObjectV1Request->new(); # EzsigntemplatepackagesignerEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesigner_edit_object_v1(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id, ezsigntemplatepackagesigner_edit_object_v1_request => $ezsigntemplatepackagesigner_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignerApi->ezsigntemplatepackagesigner_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesigner_id** | **int**|  | 
 **ezsigntemplatepackagesigner_edit_object_v1_request** | [**EzsigntemplatepackagesignerEditObjectV1Request**](EzsigntemplatepackagesignerEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesigner_get_object_v2**
> EzsigntemplatepackagesignerGetObjectV2Response ezsigntemplatepackagesigner_get_object_v2(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id)

Retrieve an existing Ezsigntemplatepackagesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesigner_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesigner_get_object_v2(pki_ezsigntemplatepackagesigner_id => $pki_ezsigntemplatepackagesigner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignerApi->ezsigntemplatepackagesigner_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesigner_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagesignerGetObjectV2Response**](EzsigntemplatepackagesignerGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

