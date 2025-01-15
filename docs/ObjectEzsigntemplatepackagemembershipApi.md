# EzmaxApi::ObjectEzsigntemplatepackagemembershipApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatepackagemembershipApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatepackagemembership_create_object_v1**](ObjectEzsigntemplatepackagemembershipApi.md#ezsigntemplatepackagemembership_create_object_v1) | **POST** /1/object/ezsigntemplatepackagemembership | Create a new Ezsigntemplatepackagemembership
[**ezsigntemplatepackagemembership_delete_object_v1**](ObjectEzsigntemplatepackagemembershipApi.md#ezsigntemplatepackagemembership_delete_object_v1) | **DELETE** /1/object/ezsigntemplatepackagemembership/{pkiEzsigntemplatepackagemembershipID} | Delete an existing Ezsigntemplatepackagemembership
[**ezsigntemplatepackagemembership_get_object_v2**](ObjectEzsigntemplatepackagemembershipApi.md#ezsigntemplatepackagemembership_get_object_v2) | **GET** /2/object/ezsigntemplatepackagemembership/{pkiEzsigntemplatepackagemembershipID} | Retrieve an existing Ezsigntemplatepackagemembership


# **ezsigntemplatepackagemembership_create_object_v1**
> EzsigntemplatepackagemembershipCreateObjectV1Response ezsigntemplatepackagemembership_create_object_v1(ezsigntemplatepackagemembership_create_object_v1_request => $ezsigntemplatepackagemembership_create_object_v1_request)

Create a new Ezsigntemplatepackagemembership

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagemembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagemembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepackagemembership_create_object_v1_request = EzmaxApi::Object::EzsigntemplatepackagemembershipCreateObjectV1Request->new(); # EzsigntemplatepackagemembershipCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackagemembership_create_object_v1(ezsigntemplatepackagemembership_create_object_v1_request => $ezsigntemplatepackagemembership_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagemembershipApi->ezsigntemplatepackagemembership_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepackagemembership_create_object_v1_request** | [**EzsigntemplatepackagemembershipCreateObjectV1Request**](EzsigntemplatepackagemembershipCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepackagemembershipCreateObjectV1Response**](EzsigntemplatepackagemembershipCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagemembership_delete_object_v1**
> CommonResponse ezsigntemplatepackagemembership_delete_object_v1(pki_ezsigntemplatepackagemembership_id => $pki_ezsigntemplatepackagemembership_id)

Delete an existing Ezsigntemplatepackagemembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagemembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagemembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagemembership_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagemembership_delete_object_v1(pki_ezsigntemplatepackagemembership_id => $pki_ezsigntemplatepackagemembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagemembershipApi->ezsigntemplatepackagemembership_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagemembership_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagemembership_get_object_v2**
> EzsigntemplatepackagemembershipGetObjectV2Response ezsigntemplatepackagemembership_get_object_v2(pki_ezsigntemplatepackagemembership_id => $pki_ezsigntemplatepackagemembership_id)

Retrieve an existing Ezsigntemplatepackagemembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagemembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagemembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagemembership_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagemembership_get_object_v2(pki_ezsigntemplatepackagemembership_id => $pki_ezsigntemplatepackagemembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagemembershipApi->ezsigntemplatepackagemembership_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagemembership_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagemembershipGetObjectV2Response**](EzsigntemplatepackagemembershipGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

