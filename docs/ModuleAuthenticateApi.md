# EzmaxApi::ModuleAuthenticateApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleAuthenticateApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_authenticate_v2**](ModuleAuthenticateApi.md#authenticate_authenticate_v2) | **POST** /2/module/authenticate/authenticate/{eSessionType} | Authenticate a user


# **authenticate_authenticate_v2**
> AuthenticateAuthenticateV2Response authenticate_authenticate_v2(e_session_type => $e_session_type, authenticate_authenticate_v2_request => $authenticate_authenticate_v2_request)

Authenticate a user

This endpoint authenticates a user.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ModuleAuthenticateApi;
my $api_instance = EzmaxApi::ModuleAuthenticateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_session_type = "e_session_type_example"; # string | 
my $authenticate_authenticate_v2_request = EzmaxApi::Object::AuthenticateAuthenticateV2Request->new(); # AuthenticateAuthenticateV2Request | 

eval { 
    my $result = $api_instance->authenticate_authenticate_v2(e_session_type => $e_session_type, authenticate_authenticate_v2_request => $authenticate_authenticate_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleAuthenticateApi->authenticate_authenticate_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_session_type** | **string**|  | 
 **authenticate_authenticate_v2_request** | [**AuthenticateAuthenticateV2Request**](AuthenticateAuthenticateV2Request.md)|  | 

### Return type

[**AuthenticateAuthenticateV2Response**](AuthenticateAuthenticateV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

