# EzmaxApi::ModuleSsprApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleSsprApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sspr_remind_usernames_v1**](ModuleSsprApi.md#sspr_remind_usernames_v1) | **POST** /1/module/sspr/remindUsernames | Remind of forgotten username(s)


# **sspr_remind_usernames_v1**
> sspr_remind_usernames_v1()

Remind of forgotten username(s)

This endpoint returns an email with the username(s) matching the email address provided in case of forgotten username

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ModuleSsprApi;
my $api_instance = EzmaxApi::ModuleSsprApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval { 
    $api_instance->sspr_remind_usernames_v1();
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_remind_usernames_v1: $@\n";
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

