# EzmaxApi::ObjectActivesessionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectActivesessionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activesession_get_current_v1**](ObjectActivesessionApi.md#activesession_get_current_v1) | **GET** /1/object/activesession/getCurrent | Get Current Activesession


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

