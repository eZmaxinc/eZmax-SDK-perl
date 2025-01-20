# EzmaxApi::ObjectEzsignsignergroupApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignsignergroupApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsignergroup_create_object_v1**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_create_object_v1) | **POST** /1/object/ezsignsignergroup | Create a new Ezsignsignergroup
[**ezsignsignergroup_delete_object_v1**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_delete_object_v1) | **DELETE** /1/object/ezsignsignergroup/{pkiEzsignsignergroupID} | Delete an existing Ezsignsignergroup
[**ezsignsignergroup_edit_ezsignsignergroupmemberships_v1**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_edit_ezsignsignergroupmemberships_v1) | **PUT** /1/object/ezsignsignergroup/{pkiEzsignsignergroupID}/editEzsignsignergroupmemberships | Edit multiple Ezsignsignergroupmemberships
[**ezsignsignergroup_edit_object_v1**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_edit_object_v1) | **PUT** /1/object/ezsignsignergroup/{pkiEzsignsignergroupID} | Edit an existing Ezsignsignergroup
[**ezsignsignergroup_get_ezsignsignergroupmemberships_v1**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_get_ezsignsignergroupmemberships_v1) | **GET** /1/object/ezsignsignergroup/{pkiEzsignsignergroupID}/getEzsignsignergroupmemberships | Retrieve an existing Ezsignsignergroup&#39;s Ezsignsignergroupmemberships
[**ezsignsignergroup_get_object_v2**](ObjectEzsignsignergroupApi.md#ezsignsignergroup_get_object_v2) | **GET** /2/object/ezsignsignergroup/{pkiEzsignsignergroupID} | Retrieve an existing Ezsignsignergroup


# **ezsignsignergroup_create_object_v1**
> EzsignsignergroupCreateObjectV1Response ezsignsignergroup_create_object_v1(ezsignsignergroup_create_object_v1_request => $ezsignsignergroup_create_object_v1_request)

Create a new Ezsignsignergroup

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsignergroup_create_object_v1_request = EzmaxApi::Object::EzsignsignergroupCreateObjectV1Request->new(); # EzsignsignergroupCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsignergroup_create_object_v1(ezsignsignergroup_create_object_v1_request => $ezsignsignergroup_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignergroup_create_object_v1_request** | [**EzsignsignergroupCreateObjectV1Request**](EzsignsignergroupCreateObjectV1Request.md)|  | 

### Return type

[**EzsignsignergroupCreateObjectV1Response**](EzsignsignergroupCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroup_delete_object_v1**
> CommonResponse ezsignsignergroup_delete_object_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id)

Delete an existing Ezsignsignergroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroup_id = 56; # int | The unique ID of the Ezsignsignergroup

eval {
    my $result = $api_instance->ezsignsignergroup_delete_object_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroup_id** | **int**| The unique ID of the Ezsignsignergroup | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroup_edit_ezsignsignergroupmemberships_v1**
> EzsignsignergroupEditEzsignsignergroupmembershipsV1Response ezsignsignergroup_edit_ezsignsignergroupmemberships_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id, ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request => $ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request)

Edit multiple Ezsignsignergroupmemberships

Using this endpoint, you can edit multiple Ezsignsignergroupmemberships at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroup_id = 56; # int | 
my $ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request = EzmaxApi::Object::EzsignsignergroupEditEzsignsignergroupmembershipsV1Request->new(); # EzsignsignergroupEditEzsignsignergroupmembershipsV1Request | 

eval {
    my $result = $api_instance->ezsignsignergroup_edit_ezsignsignergroupmemberships_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id, ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request => $ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_edit_ezsignsignergroupmemberships_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroup_id** | **int**|  | 
 **ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request** | [**EzsignsignergroupEditEzsignsignergroupmembershipsV1Request**](EzsignsignergroupEditEzsignsignergroupmembershipsV1Request.md)|  | 

### Return type

[**EzsignsignergroupEditEzsignsignergroupmembershipsV1Response**](EzsignsignergroupEditEzsignsignergroupmembershipsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroup_edit_object_v1**
> CommonResponse ezsignsignergroup_edit_object_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id, ezsignsignergroup_edit_object_v1_request => $ezsignsignergroup_edit_object_v1_request)

Edit an existing Ezsignsignergroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroup_id = 56; # int | The unique ID of the Ezsignsignergroup
my $ezsignsignergroup_edit_object_v1_request = EzmaxApi::Object::EzsignsignergroupEditObjectV1Request->new(); # EzsignsignergroupEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsignergroup_edit_object_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id, ezsignsignergroup_edit_object_v1_request => $ezsignsignergroup_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroup_id** | **int**| The unique ID of the Ezsignsignergroup | 
 **ezsignsignergroup_edit_object_v1_request** | [**EzsignsignergroupEditObjectV1Request**](EzsignsignergroupEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroup_get_ezsignsignergroupmemberships_v1**
> EzsignsignergroupGetEzsignsignergroupmembershipsV1Response ezsignsignergroup_get_ezsignsignergroupmemberships_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id)

Retrieve an existing Ezsignsignergroup's Ezsignsignergroupmemberships

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignsignergroup_get_ezsignsignergroupmemberships_v1(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_get_ezsignsignergroupmemberships_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroup_id** | **int**|  | 

### Return type

[**EzsignsignergroupGetEzsignsignergroupmembershipsV1Response**](EzsignsignergroupGetEzsignsignergroupmembershipsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignergroup_get_object_v2**
> EzsignsignergroupGetObjectV2Response ezsignsignergroup_get_object_v2(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id)

Retrieve an existing Ezsignsignergroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignergroupApi;
my $api_instance = EzmaxApi::ObjectEzsignsignergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignergroup_id = 56; # int | The unique ID of the Ezsignsignergroup

eval {
    my $result = $api_instance->ezsignsignergroup_get_object_v2(pki_ezsignsignergroup_id => $pki_ezsignsignergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignergroupApi->ezsignsignergroup_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignergroup_id** | **int**| The unique ID of the Ezsignsignergroup | 

### Return type

[**EzsignsignergroupGetObjectV2Response**](EzsignsignergroupGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

