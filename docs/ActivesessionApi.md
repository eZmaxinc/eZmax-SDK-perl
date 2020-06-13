# WWW::OpenAPIClient::ActivesessionApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ActivesessionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_current**](ActivesessionApi.md#get_current) | **GET** /1/object/activesession/getCurrent | Get Current Activesession


# **get_current**
> get_current()

Get Current Activesession

Todo Description

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ActivesessionApi;
my $api_instance = WWW::OpenAPIClient::ActivesessionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval { 
    $api_instance->get_current();
};
if ($@) {
    warn "Exception when calling ActivesessionApi->get_current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

