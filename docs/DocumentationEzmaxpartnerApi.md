# EzmaxApi::DocumentationEzmaxpartnerApi

## Load the API package
```perl
use EzmaxApi::Object::DocumentationEzmaxpartnerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentation_subscribe_v1**](DocumentationEzmaxpartnerApi.md#documentation_subscribe_v1) | **POST** /1/documentation/subscribe | Subscribe to an Ezmaxparnerproductstage


# **documentation_subscribe_v1**
> DocumentationSubscribeV1Response documentation_subscribe_v1(documentation_subscribe_v1_request => $documentation_subscribe_v1_request)

Subscribe to an Ezmaxparnerproductstage

Subscribe to an Ezmaxparnerproductstage

### Example
```perl
use Data::Dumper;
use EzmaxApi::DocumentationEzmaxpartnerApi;
my $api_instance = EzmaxApi::DocumentationEzmaxpartnerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $documentation_subscribe_v1_request = EzmaxApi::Object::DocumentationSubscribeV1Request->new(); # DocumentationSubscribeV1Request | 

eval {
    my $result = $api_instance->documentation_subscribe_v1(documentation_subscribe_v1_request => $documentation_subscribe_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DocumentationEzmaxpartnerApi->documentation_subscribe_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentation_subscribe_v1_request** | [**DocumentationSubscribeV1Request**](DocumentationSubscribeV1Request.md)|  | 

### Return type

[**DocumentationSubscribeV1Response**](DocumentationSubscribeV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

