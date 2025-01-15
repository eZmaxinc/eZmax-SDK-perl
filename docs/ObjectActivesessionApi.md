# EzmaxApi::ObjectActivesessionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectActivesessionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activesession_generate_federation_token_v1**](ObjectActivesessionApi.md#activesession_generate_federation_token_v1) | **POST** /1/object/activesession/generateFederationToken | Generate a federation token
[**activesession_get_current_v1**](ObjectActivesessionApi.md#activesession_get_current_v1) | **GET** /1/object/activesession/getCurrent | Get Current Activesession
[**activesession_get_current_v2**](ObjectActivesessionApi.md#activesession_get_current_v2) | **GET** /2/object/activesession/getCurrent | Get Current Activesession
[**activesession_get_list_v1**](ObjectActivesessionApi.md#activesession_get_list_v1) | **GET** /1/object/activesession/getList | Retrieve Activesession list


# **activesession_generate_federation_token_v1**
> ActivesessionGenerateFederationTokenV1Response activesession_generate_federation_token_v1(activesession_generate_federation_token_v1_request => $activesession_generate_federation_token_v1_request)

Generate a federation token



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectActivesessionApi;
my $api_instance = EzmaxApi::ObjectActivesessionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $activesession_generate_federation_token_v1_request = EzmaxApi::Object::ActivesessionGenerateFederationTokenV1Request->new(); # ActivesessionGenerateFederationTokenV1Request | 

eval {
    my $result = $api_instance->activesession_generate_federation_token_v1(activesession_generate_federation_token_v1_request => $activesession_generate_federation_token_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectActivesessionApi->activesession_generate_federation_token_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activesession_generate_federation_token_v1_request** | [**ActivesessionGenerateFederationTokenV1Request**](ActivesessionGenerateFederationTokenV1Request.md)|  | 

### Return type

[**ActivesessionGenerateFederationTokenV1Response**](ActivesessionGenerateFederationTokenV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activesession_get_current_v1**
> ActivesessionGetCurrentV1Response activesession_get_current_v1()

Get Current Activesession

Retrieve the details about the current activesession

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectActivesessionApi;
my $api_instance = EzmaxApi::ObjectActivesessionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->activesession_get_current_v1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectActivesessionApi->activesession_get_current_v1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ActivesessionGetCurrentV1Response**](ActivesessionGetCurrentV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activesession_get_current_v2**
> ActivesessionGetCurrentV2Response activesession_get_current_v2()

Get Current Activesession

Retrieve the details about the current activesession

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectActivesessionApi;
my $api_instance = EzmaxApi::ObjectActivesessionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->activesession_get_current_v2();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectActivesessionApi->activesession_get_current_v2: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ActivesessionGetCurrentV2Response**](ActivesessionGetCurrentV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activesession_get_list_v1**
> ActivesessionGetListV1Response activesession_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Activesession list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectActivesessionApi;
my $api_instance = EzmaxApi::ObjectActivesessionApi->new(

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
    my $result = $api_instance->activesession_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectActivesessionApi->activesession_get_list_v1: $@\n";
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

[**ActivesessionGetListV1Response**](ActivesessionGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

