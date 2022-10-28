# EzmaxApi::ObjectEzsigntemplateformfieldgroupApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplateformfieldgroupApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplateformfieldgroup_create_object_v1**](ObjectEzsigntemplateformfieldgroupApi.md#ezsigntemplateformfieldgroup_create_object_v1) | **POST** /1/object/ezsigntemplateformfieldgroup | Create a new Ezsigntemplateformfieldgroup
[**ezsigntemplateformfieldgroup_delete_object_v1**](ObjectEzsigntemplateformfieldgroupApi.md#ezsigntemplateformfieldgroup_delete_object_v1) | **DELETE** /1/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID} | Delete an existing Ezsigntemplateformfieldgroup
[**ezsigntemplateformfieldgroup_edit_object_v1**](ObjectEzsigntemplateformfieldgroupApi.md#ezsigntemplateformfieldgroup_edit_object_v1) | **PUT** /1/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID} | Edit an existing Ezsigntemplateformfieldgroup
[**ezsigntemplateformfieldgroup_get_object_v1**](ObjectEzsigntemplateformfieldgroupApi.md#ezsigntemplateformfieldgroup_get_object_v1) | **GET** /1/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID} | Retrieve an existing Ezsigntemplateformfieldgroup
[**ezsigntemplateformfieldgroup_get_object_v2**](ObjectEzsigntemplateformfieldgroupApi.md#ezsigntemplateformfieldgroup_get_object_v2) | **GET** /2/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID} | Retrieve an existing Ezsigntemplateformfieldgroup


# **ezsigntemplateformfieldgroup_create_object_v1**
> EzsigntemplateformfieldgroupCreateObjectV1Response ezsigntemplateformfieldgroup_create_object_v1(ezsigntemplateformfieldgroup_create_object_v1_request => $ezsigntemplateformfieldgroup_create_object_v1_request)

Create a new Ezsigntemplateformfieldgroup

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplateformfieldgroup_create_object_v1_request = EzmaxApi::Object::EzsigntemplateformfieldgroupCreateObjectV1Request->new(); # EzsigntemplateformfieldgroupCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplateformfieldgroup_create_object_v1(ezsigntemplateformfieldgroup_create_object_v1_request => $ezsigntemplateformfieldgroup_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateformfieldgroupApi->ezsigntemplateformfieldgroup_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplateformfieldgroup_create_object_v1_request** | [**EzsigntemplateformfieldgroupCreateObjectV1Request**](EzsigntemplateformfieldgroupCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplateformfieldgroupCreateObjectV1Response**](EzsigntemplateformfieldgroupCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateformfieldgroup_delete_object_v1**
> EzsigntemplateformfieldgroupDeleteObjectV1Response ezsigntemplateformfieldgroup_delete_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id)

Delete an existing Ezsigntemplateformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateformfieldgroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplateformfieldgroup_delete_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateformfieldgroupApi->ezsigntemplateformfieldgroup_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateformfieldgroup_id** | **int**|  | 

### Return type

[**EzsigntemplateformfieldgroupDeleteObjectV1Response**](EzsigntemplateformfieldgroupDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateformfieldgroup_edit_object_v1**
> EzsigntemplateformfieldgroupEditObjectV1Response ezsigntemplateformfieldgroup_edit_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id, ezsigntemplateformfieldgroup_edit_object_v1_request => $ezsigntemplateformfieldgroup_edit_object_v1_request)

Edit an existing Ezsigntemplateformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateformfieldgroup_id = 56; # int | 
my $ezsigntemplateformfieldgroup_edit_object_v1_request = EzmaxApi::Object::EzsigntemplateformfieldgroupEditObjectV1Request->new(); # EzsigntemplateformfieldgroupEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplateformfieldgroup_edit_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id, ezsigntemplateformfieldgroup_edit_object_v1_request => $ezsigntemplateformfieldgroup_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateformfieldgroupApi->ezsigntemplateformfieldgroup_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateformfieldgroup_id** | **int**|  | 
 **ezsigntemplateformfieldgroup_edit_object_v1_request** | [**EzsigntemplateformfieldgroupEditObjectV1Request**](EzsigntemplateformfieldgroupEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplateformfieldgroupEditObjectV1Response**](EzsigntemplateformfieldgroupEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateformfieldgroup_get_object_v1**
> EzsigntemplateformfieldgroupGetObjectV1Response ezsigntemplateformfieldgroup_get_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id)

Retrieve an existing Ezsigntemplateformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateformfieldgroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplateformfieldgroup_get_object_v1(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateformfieldgroupApi->ezsigntemplateformfieldgroup_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateformfieldgroup_id** | **int**|  | 

### Return type

[**EzsigntemplateformfieldgroupGetObjectV1Response**](EzsigntemplateformfieldgroupGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateformfieldgroup_get_object_v2**
> EzsigntemplateformfieldgroupGetObjectV2Response ezsigntemplateformfieldgroup_get_object_v2(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id)

Retrieve an existing Ezsigntemplateformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateformfieldgroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplateformfieldgroup_get_object_v2(pki_ezsigntemplateformfieldgroup_id => $pki_ezsigntemplateformfieldgroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateformfieldgroupApi->ezsigntemplateformfieldgroup_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateformfieldgroup_id** | **int**|  | 

### Return type

[**EzsigntemplateformfieldgroupGetObjectV2Response**](EzsigntemplateformfieldgroupGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

