# EzmaxApi::ObjectDomainApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDomainApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**domain_create_object_v1**](ObjectDomainApi.md#domain_create_object_v1) | **POST** /1/object/domain | Create a new Domain
[**domain_delete_object_v1**](ObjectDomainApi.md#domain_delete_object_v1) | **DELETE** /1/object/domain/{pkiDomainID} | Delete an existing Domain
[**domain_get_list_v1**](ObjectDomainApi.md#domain_get_list_v1) | **GET** /1/object/domain/getList | Retrieve Domain list
[**domain_get_object_v2**](ObjectDomainApi.md#domain_get_object_v2) | **GET** /2/object/domain/{pkiDomainID} | Retrieve an existing Domain


# **domain_create_object_v1**
> DomainCreateObjectV1Response domain_create_object_v1(domain_create_object_v1_request => $domain_create_object_v1_request)

Create a new Domain

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDomainApi;
my $api_instance = EzmaxApi::ObjectDomainApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $domain_create_object_v1_request = EzmaxApi::Object::DomainCreateObjectV1Request->new(); # DomainCreateObjectV1Request | 

eval {
    my $result = $api_instance->domain_create_object_v1(domain_create_object_v1_request => $domain_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDomainApi->domain_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_create_object_v1_request** | [**DomainCreateObjectV1Request**](DomainCreateObjectV1Request.md)|  | 

### Return type

[**DomainCreateObjectV1Response**](DomainCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domain_delete_object_v1**
> CommonResponse domain_delete_object_v1(pki_domain_id => $pki_domain_id)

Delete an existing Domain



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDomainApi;
my $api_instance = EzmaxApi::ObjectDomainApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_domain_id = 56; # int | The unique ID of the Domain

eval {
    my $result = $api_instance->domain_delete_object_v1(pki_domain_id => $pki_domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDomainApi->domain_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_domain_id** | **int**| The unique ID of the Domain | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domain_get_list_v1**
> DomainGetListV1Response domain_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Domain list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDomainApi;
my $api_instance = EzmaxApi::ObjectDomainApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->domain_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDomainApi->domain_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**DomainGetListV1Response**](DomainGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domain_get_object_v2**
> DomainGetObjectV2Response domain_get_object_v2(pki_domain_id => $pki_domain_id)

Retrieve an existing Domain



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDomainApi;
my $api_instance = EzmaxApi::ObjectDomainApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_domain_id = 56; # int | The unique ID of the Domain

eval {
    my $result = $api_instance->domain_get_object_v2(pki_domain_id => $pki_domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDomainApi->domain_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_domain_id** | **int**| The unique ID of the Domain | 

### Return type

[**DomainGetObjectV2Response**](DomainGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

