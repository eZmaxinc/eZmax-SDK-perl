# EzmaxApi::ObjectEzsignformfieldgroupApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignformfieldgroupApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignformfieldgroup_create_object_v1**](ObjectEzsignformfieldgroupApi.md#ezsignformfieldgroup_create_object_v1) | **POST** /1/object/ezsignformfieldgroup | Create a new Ezsignformfieldgroup
[**ezsignformfieldgroup_delete_object_v1**](ObjectEzsignformfieldgroupApi.md#ezsignformfieldgroup_delete_object_v1) | **DELETE** /1/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID} | Delete an existing Ezsignformfieldgroup
[**ezsignformfieldgroup_edit_object_v1**](ObjectEzsignformfieldgroupApi.md#ezsignformfieldgroup_edit_object_v1) | **PUT** /1/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID} | Edit an existing Ezsignformfieldgroup
[**ezsignformfieldgroup_get_object_v2**](ObjectEzsignformfieldgroupApi.md#ezsignformfieldgroup_get_object_v2) | **GET** /2/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID} | Retrieve an existing Ezsignformfieldgroup


# **ezsignformfieldgroup_create_object_v1**
> EzsignformfieldgroupCreateObjectV1Response ezsignformfieldgroup_create_object_v1(ezsignformfieldgroup_create_object_v1_request => $ezsignformfieldgroup_create_object_v1_request)

Create a new Ezsignformfieldgroup

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsignformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignformfieldgroup_create_object_v1_request = EzmaxApi::Object::EzsignformfieldgroupCreateObjectV1Request->new(); # EzsignformfieldgroupCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignformfieldgroup_create_object_v1(ezsignformfieldgroup_create_object_v1_request => $ezsignformfieldgroup_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignformfieldgroupApi->ezsignformfieldgroup_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignformfieldgroup_create_object_v1_request** | [**EzsignformfieldgroupCreateObjectV1Request**](EzsignformfieldgroupCreateObjectV1Request.md)|  | 

### Return type

[**EzsignformfieldgroupCreateObjectV1Response**](EzsignformfieldgroupCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignformfieldgroup_delete_object_v1**
> EzsignformfieldgroupDeleteObjectV1Response ezsignformfieldgroup_delete_object_v1(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id)

Delete an existing Ezsignformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsignformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignformfieldgroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignformfieldgroup_delete_object_v1(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignformfieldgroupApi->ezsignformfieldgroup_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignformfieldgroup_id** | **int**|  | 

### Return type

[**EzsignformfieldgroupDeleteObjectV1Response**](EzsignformfieldgroupDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignformfieldgroup_edit_object_v1**
> EzsignformfieldgroupEditObjectV1Response ezsignformfieldgroup_edit_object_v1(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id, ezsignformfieldgroup_edit_object_v1_request => $ezsignformfieldgroup_edit_object_v1_request)

Edit an existing Ezsignformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsignformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignformfieldgroup_id = 56; # int | 
my $ezsignformfieldgroup_edit_object_v1_request = EzmaxApi::Object::EzsignformfieldgroupEditObjectV1Request->new(); # EzsignformfieldgroupEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignformfieldgroup_edit_object_v1(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id, ezsignformfieldgroup_edit_object_v1_request => $ezsignformfieldgroup_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignformfieldgroupApi->ezsignformfieldgroup_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignformfieldgroup_id** | **int**|  | 
 **ezsignformfieldgroup_edit_object_v1_request** | [**EzsignformfieldgroupEditObjectV1Request**](EzsignformfieldgroupEditObjectV1Request.md)|  | 

### Return type

[**EzsignformfieldgroupEditObjectV1Response**](EzsignformfieldgroupEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignformfieldgroup_get_object_v2**
> EzsignformfieldgroupGetObjectV2Response ezsignformfieldgroup_get_object_v2(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id)

Retrieve an existing Ezsignformfieldgroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignformfieldgroupApi;
my $api_instance = EzmaxApi::ObjectEzsignformfieldgroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignformfieldgroup_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignformfieldgroup_get_object_v2(pki_ezsignformfieldgroup_id => $pki_ezsignformfieldgroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignformfieldgroupApi->ezsignformfieldgroup_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignformfieldgroup_id** | **int**|  | 

### Return type

[**EzsignformfieldgroupGetObjectV2Response**](EzsignformfieldgroupGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

