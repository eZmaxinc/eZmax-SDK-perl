# EzmaxApi::ModuleSsprApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleSsprApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sspr_reset_password_request_v1**](ModuleSsprApi.md#sspr_reset_password_request_v1) | **POST** /1/module/sspr/resetPasswordRequest | Reset Password Request
[**sspr_reset_password_v1**](ModuleSsprApi.md#sspr_reset_password_v1) | **POST** /1/module/sspr/resetPassword | Reset Password
[**sspr_send_usernames_v1**](ModuleSsprApi.md#sspr_send_usernames_v1) | **POST** /1/module/sspr/sendUsernames | Send username(s)
[**sspr_unlock_account_request_v1**](ModuleSsprApi.md#sspr_unlock_account_request_v1) | **POST** /1/module/sspr/unlockAccountRequest | Unlock Account Request
[**sspr_unlock_account_v1**](ModuleSsprApi.md#sspr_unlock_account_v1) | **POST** /1/module/sspr/unlockAccount | Unlock Account
[**sspr_validate_token_v1**](ModuleSsprApi.md#sspr_validate_token_v1) | **POST** /1/module/sspr/validateToken | Validate Token


# **sspr_reset_password_request_v1**
> sspr_reset_password_request_v1(sspr_reset_password_request_v1_request => $sspr_reset_password_request_v1_request)

Reset Password Request

This endpoint sends an email with a link to reset the user's password.  sEmailAddress must be set if eUserTypeSSPR = EzsignUser  sUserLoginname must be set if eUserTypeSSPR = Native

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

my $sspr_reset_password_request_v1_request = EzmaxApi::Object::SsprResetPasswordRequestV1Request->new(); # SsprResetPasswordRequestV1Request | 

eval { 
    $api_instance->sspr_reset_password_request_v1(sspr_reset_password_request_v1_request => $sspr_reset_password_request_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_reset_password_request_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_reset_password_request_v1_request** | [**SsprResetPasswordRequestV1Request**](SsprResetPasswordRequestV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sspr_reset_password_v1**
> sspr_reset_password_v1(sspr_reset_password_v1_request => $sspr_reset_password_v1_request)

Reset Password

This endpoint resets the user's password.  sEmailAddress must be set if eUserTypeSSPR = EzsignUser  sUserLoginname must be set if eUserTypeSSPR = Native

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

my $sspr_reset_password_v1_request = EzmaxApi::Object::SsprResetPasswordV1Request->new(); # SsprResetPasswordV1Request | 

eval { 
    $api_instance->sspr_reset_password_v1(sspr_reset_password_v1_request => $sspr_reset_password_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_reset_password_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_reset_password_v1_request** | [**SsprResetPasswordV1Request**](SsprResetPasswordV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sspr_send_usernames_v1**
> sspr_send_usernames_v1(sspr_send_usernames_v1_request => $sspr_send_usernames_v1_request)

Send username(s)

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

my $sspr_send_usernames_v1_request = EzmaxApi::Object::SsprSendUsernamesV1Request->new(); # SsprSendUsernamesV1Request | 

eval { 
    $api_instance->sspr_send_usernames_v1(sspr_send_usernames_v1_request => $sspr_send_usernames_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_send_usernames_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_send_usernames_v1_request** | [**SsprSendUsernamesV1Request**](SsprSendUsernamesV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sspr_unlock_account_request_v1**
> sspr_unlock_account_request_v1(sspr_unlock_account_request_v1_request => $sspr_unlock_account_request_v1_request)

Unlock Account Request

This endpoint sends an email with a link to unlock the user account.  sEmailAddress must be set if eUserTypeSSPR = EzsignUser  sUserLoginname must be set if eUserTypeSSPR = Native

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

my $sspr_unlock_account_request_v1_request = EzmaxApi::Object::SsprUnlockAccountRequestV1Request->new(); # SsprUnlockAccountRequestV1Request | 

eval { 
    $api_instance->sspr_unlock_account_request_v1(sspr_unlock_account_request_v1_request => $sspr_unlock_account_request_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_unlock_account_request_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_unlock_account_request_v1_request** | [**SsprUnlockAccountRequestV1Request**](SsprUnlockAccountRequestV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sspr_unlock_account_v1**
> sspr_unlock_account_v1(sspr_unlock_account_v1_request => $sspr_unlock_account_v1_request)

Unlock Account

This endpoint unlocks the user account.  sEmailAddress must be set if eUserTypeSSPR = EzsignUser  sUserLoginname must be set if eUserTypeSSPR = Native

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

my $sspr_unlock_account_v1_request = EzmaxApi::Object::SsprUnlockAccountV1Request->new(); # SsprUnlockAccountV1Request | 

eval { 
    $api_instance->sspr_unlock_account_v1(sspr_unlock_account_v1_request => $sspr_unlock_account_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_unlock_account_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_unlock_account_v1_request** | [**SsprUnlockAccountV1Request**](SsprUnlockAccountV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sspr_validate_token_v1**
> sspr_validate_token_v1(sspr_validate_token_v1_request => $sspr_validate_token_v1_request)

Validate Token

This endpoint validates if a Token is valid and not expired.  sEmailAddress must be set if eUserTypeSSPR = EzsignUser  sUserLoginname must be set if eUserTypeSSPR = Native

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

my $sspr_validate_token_v1_request = EzmaxApi::Object::SsprValidateTokenV1Request->new(); # SsprValidateTokenV1Request | 

eval { 
    $api_instance->sspr_validate_token_v1(sspr_validate_token_v1_request => $sspr_validate_token_v1_request);
};
if ($@) {
    warn "Exception when calling ModuleSsprApi->sspr_validate_token_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sspr_validate_token_v1_request** | [**SsprValidateTokenV1Request**](SsprValidateTokenV1Request.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

