# EzmaxApi::ModuleEzmaxmaillinglistApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleEzmaxmaillinglistApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezmaxmaillinglist_subscribe_v1**](ModuleEzmaxmaillinglistApi.md#ezmaxmaillinglist_subscribe_v1) | **POST** /1/module/ezmaxmaillinglist/subscribe | Subscribe to specific Ezmaxmaillinglist


# **ezmaxmaillinglist_subscribe_v1**
> EzmaxmaillinglistSubscribeV1Response ezmaxmaillinglist_subscribe_v1(ezmaxmaillinglist_subscribe_v1_request => $ezmaxmaillinglist_subscribe_v1_request)

Subscribe to specific Ezmaxmaillinglist

Users can subscribe to specific Ezmaxmaillinglist

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleEzmaxmaillinglistApi;
my $api_instance = EzmaxApi::ModuleEzmaxmaillinglistApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezmaxmaillinglist_subscribe_v1_request = EzmaxApi::Object::EzmaxmaillinglistSubscribeV1Request->new(); # EzmaxmaillinglistSubscribeV1Request | 

eval {
    my $result = $api_instance->ezmaxmaillinglist_subscribe_v1(ezmaxmaillinglist_subscribe_v1_request => $ezmaxmaillinglist_subscribe_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleEzmaxmaillinglistApi->ezmaxmaillinglist_subscribe_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezmaxmaillinglist_subscribe_v1_request** | [**EzmaxmaillinglistSubscribeV1Request**](EzmaxmaillinglistSubscribeV1Request.md)|  | 

### Return type

[**EzmaxmaillinglistSubscribeV1Response**](EzmaxmaillinglistSubscribeV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

