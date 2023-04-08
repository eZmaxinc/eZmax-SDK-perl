# EzmaxApi::ObjectApikeyApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectApikeyApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apikey_create_object_v2**](ObjectApikeyApi.md#apikey_create_object_v2) | **POST** /2/object/apikey | Create a new Apikey


# **apikey_create_object_v2**
> ApikeyCreateObjectV2Response apikey_create_object_v2(apikey_create_object_v2_request => $apikey_create_object_v2_request)

Create a new Apikey

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $apikey_create_object_v2_request = EzmaxApi::Object::ApikeyCreateObjectV2Request->new(); # ApikeyCreateObjectV2Request | 

eval {
    my $result = $api_instance->apikey_create_object_v2(apikey_create_object_v2_request => $apikey_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apikey_create_object_v2_request** | [**ApikeyCreateObjectV2Request**](ApikeyCreateObjectV2Request.md)|  | 

### Return type

[**ApikeyCreateObjectV2Response**](ApikeyCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

