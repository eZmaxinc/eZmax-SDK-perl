# EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatepackagesignermembershipApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatepackagesignermembership_create_object_v1**](ObjectEzsigntemplatepackagesignermembershipApi.md#ezsigntemplatepackagesignermembership_create_object_v1) | **POST** /1/object/ezsigntemplatepackagesignermembership | Create a new Ezsigntemplatepackagesignermembership
[**ezsigntemplatepackagesignermembership_delete_object_v1**](ObjectEzsigntemplatepackagesignermembershipApi.md#ezsigntemplatepackagesignermembership_delete_object_v1) | **DELETE** /1/object/ezsigntemplatepackagesignermembership/{pkiEzsigntemplatepackagesignermembershipID} | Delete an existing Ezsigntemplatepackagesignermembership
[**ezsigntemplatepackagesignermembership_get_object_v1**](ObjectEzsigntemplatepackagesignermembershipApi.md#ezsigntemplatepackagesignermembership_get_object_v1) | **GET** /1/object/ezsigntemplatepackagesignermembership/{pkiEzsigntemplatepackagesignermembershipID} | Retrieve an existing Ezsigntemplatepackagesignermembership
[**ezsigntemplatepackagesignermembership_get_object_v2**](ObjectEzsigntemplatepackagesignermembershipApi.md#ezsigntemplatepackagesignermembership_get_object_v2) | **GET** /2/object/ezsigntemplatepackagesignermembership/{pkiEzsigntemplatepackagesignermembershipID} | Retrieve an existing Ezsigntemplatepackagesignermembership


# **ezsigntemplatepackagesignermembership_create_object_v1**
> EzsigntemplatepackagesignermembershipCreateObjectV1Response ezsigntemplatepackagesignermembership_create_object_v1(ezsigntemplatepackagesignermembership_create_object_v1_request => $ezsigntemplatepackagesignermembership_create_object_v1_request)

Create a new Ezsigntemplatepackagesignermembership

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepackagesignermembership_create_object_v1_request = EzmaxApi::Object::EzsigntemplatepackagesignermembershipCreateObjectV1Request->new(); # EzsigntemplatepackagesignermembershipCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesignermembership_create_object_v1(ezsigntemplatepackagesignermembership_create_object_v1_request => $ezsigntemplatepackagesignermembership_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignermembershipApi->ezsigntemplatepackagesignermembership_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepackagesignermembership_create_object_v1_request** | [**EzsigntemplatepackagesignermembershipCreateObjectV1Request**](EzsigntemplatepackagesignermembershipCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepackagesignermembershipCreateObjectV1Response**](EzsigntemplatepackagesignermembershipCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesignermembership_delete_object_v1**
> EzsigntemplatepackagesignermembershipDeleteObjectV1Response ezsigntemplatepackagesignermembership_delete_object_v1(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id)

Delete an existing Ezsigntemplatepackagesignermembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesignermembership_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesignermembership_delete_object_v1(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignermembershipApi->ezsigntemplatepackagesignermembership_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesignermembership_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagesignermembershipDeleteObjectV1Response**](EzsigntemplatepackagesignermembershipDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesignermembership_get_object_v1**
> EzsigntemplatepackagesignermembershipGetObjectV1Response ezsigntemplatepackagesignermembership_get_object_v1(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id)

Retrieve an existing Ezsigntemplatepackagesignermembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesignermembership_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesignermembership_get_object_v1(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignermembershipApi->ezsigntemplatepackagesignermembership_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesignermembership_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagesignermembershipGetObjectV1Response**](EzsigntemplatepackagesignermembershipGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackagesignermembership_get_object_v2**
> EzsigntemplatepackagesignermembershipGetObjectV2Response ezsigntemplatepackagesignermembership_get_object_v2(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id)

Retrieve an existing Ezsigntemplatepackagesignermembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackagesignermembership_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackagesignermembership_get_object_v2(pki_ezsigntemplatepackagesignermembership_id => $pki_ezsigntemplatepackagesignermembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackagesignermembershipApi->ezsigntemplatepackagesignermembership_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackagesignermembership_id** | **int**|  | 

### Return type

[**EzsigntemplatepackagesignermembershipGetObjectV2Response**](EzsigntemplatepackagesignermembershipGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

