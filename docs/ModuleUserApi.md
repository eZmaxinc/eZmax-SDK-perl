# EzmaxApi::ModuleUserApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleUserApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_create_ezsignuser_v1**](ModuleUserApi.md#user_create_ezsignuser_v1) | **POST** /1/module/user/createezsignuser | Create a new User of type Ezsignuser


# **user_create_ezsignuser_v1**
> UserCreateEzsignuserV1Response user_create_ezsignuser_v1(user_create_ezsignuser_v1_request => $user_create_ezsignuser_v1_request)

Create a new User of type Ezsignuser

The endpoint allows to initiate the creation or a user of type Ezsignuser.  The user will be created only once the email verification process will be completed

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ModuleUserApi;
my $api_instance = EzmaxApi::ModuleUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $user_create_ezsignuser_v1_request = [EzmaxApi::Object::ARRAY[UserCreateEzsignuserV1Request]->new()]; # ARRAY[UserCreateEzsignuserV1Request] | 

eval { 
    my $result = $api_instance->user_create_ezsignuser_v1(user_create_ezsignuser_v1_request => $user_create_ezsignuser_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleUserApi->user_create_ezsignuser_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create_ezsignuser_v1_request** | [**ARRAY[UserCreateEzsignuserV1Request]**](UserCreateEzsignuserV1Request.md)|  | 

### Return type

[**UserCreateEzsignuserV1Response**](UserCreateEzsignuserV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

