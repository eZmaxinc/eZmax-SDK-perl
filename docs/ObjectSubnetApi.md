# EzmaxApi::ObjectSubnetApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSubnetApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subnet_create_object_v1**](ObjectSubnetApi.md#subnet_create_object_v1) | **POST** /1/object/subnet | Create a new Subnet
[**subnet_delete_object_v1**](ObjectSubnetApi.md#subnet_delete_object_v1) | **DELETE** /1/object/subnet/{pkiSubnetID} | Delete an existing Subnet
[**subnet_edit_object_v1**](ObjectSubnetApi.md#subnet_edit_object_v1) | **PUT** /1/object/subnet/{pkiSubnetID} | Edit an existing Subnet
[**subnet_get_object_v2**](ObjectSubnetApi.md#subnet_get_object_v2) | **GET** /2/object/subnet/{pkiSubnetID} | Retrieve an existing Subnet


# **subnet_create_object_v1**
> SubnetCreateObjectV1Response subnet_create_object_v1(subnet_create_object_v1_request => $subnet_create_object_v1_request)

Create a new Subnet

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSubnetApi;
my $api_instance = EzmaxApi::ObjectSubnetApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $subnet_create_object_v1_request = EzmaxApi::Object::SubnetCreateObjectV1Request->new(); # SubnetCreateObjectV1Request | 

eval {
    my $result = $api_instance->subnet_create_object_v1(subnet_create_object_v1_request => $subnet_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSubnetApi->subnet_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subnet_create_object_v1_request** | [**SubnetCreateObjectV1Request**](SubnetCreateObjectV1Request.md)|  | 

### Return type

[**SubnetCreateObjectV1Response**](SubnetCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subnet_delete_object_v1**
> SubnetDeleteObjectV1Response subnet_delete_object_v1(pki_subnet_id => $pki_subnet_id)

Delete an existing Subnet



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSubnetApi;
my $api_instance = EzmaxApi::ObjectSubnetApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_subnet_id = 56; # int | The unique ID of the Subnet

eval {
    my $result = $api_instance->subnet_delete_object_v1(pki_subnet_id => $pki_subnet_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSubnetApi->subnet_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_subnet_id** | **int**| The unique ID of the Subnet | 

### Return type

[**SubnetDeleteObjectV1Response**](SubnetDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subnet_edit_object_v1**
> SubnetEditObjectV1Response subnet_edit_object_v1(pki_subnet_id => $pki_subnet_id, subnet_edit_object_v1_request => $subnet_edit_object_v1_request)

Edit an existing Subnet



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSubnetApi;
my $api_instance = EzmaxApi::ObjectSubnetApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_subnet_id = 56; # int | The unique ID of the Subnet
my $subnet_edit_object_v1_request = EzmaxApi::Object::SubnetEditObjectV1Request->new(); # SubnetEditObjectV1Request | 

eval {
    my $result = $api_instance->subnet_edit_object_v1(pki_subnet_id => $pki_subnet_id, subnet_edit_object_v1_request => $subnet_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSubnetApi->subnet_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_subnet_id** | **int**| The unique ID of the Subnet | 
 **subnet_edit_object_v1_request** | [**SubnetEditObjectV1Request**](SubnetEditObjectV1Request.md)|  | 

### Return type

[**SubnetEditObjectV1Response**](SubnetEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subnet_get_object_v2**
> SubnetGetObjectV2Response subnet_get_object_v2(pki_subnet_id => $pki_subnet_id)

Retrieve an existing Subnet



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSubnetApi;
my $api_instance = EzmaxApi::ObjectSubnetApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_subnet_id = 56; # int | The unique ID of the Subnet

eval {
    my $result = $api_instance->subnet_get_object_v2(pki_subnet_id => $pki_subnet_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSubnetApi->subnet_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_subnet_id** | **int**| The unique ID of the Subnet | 

### Return type

[**SubnetGetObjectV2Response**](SubnetGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

