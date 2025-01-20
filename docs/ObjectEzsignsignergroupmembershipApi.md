# EzmaxApi::ObjectEzsignsignergroupmembershipApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignsignergroupmembershipApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsignergroupmembership_create_object_v1**](ObjectEzsignsignergroupmembershipApi.md#ezsignsignergroupmembership_create_object_v1) | **POST** /1/object/ezsignsignergroupmembership | Create a new Ezsignsignergroupmembership
[**ezsignsignergroupmembership_delete_object_v1**](ObjectEzsignsignergroupmembershipApi.md#ezsignsignergroupmembership_delete_object_v1) | **DELETE** /1/object/ezsignsignergroupmembership/{pkiEzsignsignergroupmembershipID} | Delete an existing Ezsignsignergroupmembership
[**ezsignsignergroupmembership_get_object_v2**](ObjectEzsignsignergroupmembershipApi.md#ezsignsignergroupmembership_get_object_v2) | **GET** /2/object/ezsignsignergroupmembership/{pkiEzsignsignergroupmembershipID} | Retrieve an existing Ezsignsignergroupmembership


# **ezsignsignergroupmembership_create_object_v1**
> EzsignsignergroupmembershipCreateObjectV1Response ezsignsignergroupmembership_create_object_v1(ezsignsignergroupmembership_create_object_v1_request => $ezsignsignergroupmembership_create_object_v1_request)

Create a new Ezsignsignergroupmembership

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsignergroupmembership_create_object_v1_request = EzmaxApi::Object::EzsignsignergroupmembershipCreateObjectV1Request->new(); # EzsignsignergroupmembershipCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsignergroupmembership_create_object_v1(ezsignsignergroupmembership_create_object_v1_request => $ezsignsignergroupmembership_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupmembershipApi->ezsignsignergroupmembership_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignergroupmembership_create_object_v1_request** | [**EzsignsignergroupmembershipCreateObjectV1Request**](EzsignsignergroupmembershipCreateObjectV1Request.md)|  | 

### Return type

[**EzsignsignergroupmembershipCreateObjectV1Response**](EzsignsignergroupmembershipCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroupmembership_delete_object_v1**
> CommonResponse ezsignsignergroupmembership_delete_object_v1(pki_ezsignsignergroupmembership_id => $pki_ezsignsignergroupmembership_id)

Delete an existing Ezsignsignergroupmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroupmembership_id = 56; # int | The unique ID of the Ezsignsignergroupmembership

eval {
    my $result = $api_instance->ezsignsignergroupmembership_delete_object_v1(pki_ezsignsignergroupmembership_id => $pki_ezsignsignergroupmembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupmembershipApi->ezsignsignergroupmembership_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroupmembership_id** | **int**| The unique ID of the Ezsignsignergroupmembership | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroupmembership_get_object_v2**
> EzsignsignergroupmembershipGetObjectV2Response ezsignsignergroupmembership_get_object_v2(pki_ezsignsignergroupmembership_id => $pki_ezsignsignergroupmembership_id)

Retrieve an existing Ezsignsignergroupmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroupmembership_id = 56; # int | The unique ID of the Ezsignsignergroupmembership

eval {
    my $result = $api_instance->ezsignsignergroupmembership_get_object_v2(pki_ezsignsignergroupmembership_id => $pki_ezsignsignergroupmembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupmembershipApi->ezsignsignergroupmembership_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroupmembership_id** | **int**| The unique ID of the Ezsignsignergroupmembership | 

### Return type

[**EzsignsignergroupmembershipGetObjectV2Response**](EzsignsignergroupmembershipGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

