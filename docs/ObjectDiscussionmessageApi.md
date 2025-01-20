# EzmaxApi::ObjectDiscussionmessageApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDiscussionmessageApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discussionmessage_create_object_v1**](ObjectDiscussionmessageApi.md#discussionmessage_create_object_v1) | **POST** /1/object/discussionmessage | Create a new Discussionmessage
[**discussionmessage_delete_object_v1**](ObjectDiscussionmessageApi.md#discussionmessage_delete_object_v1) | **DELETE** /1/object/discussionmessage/{pkiDiscussionmessageID} | Delete an existing Discussionmessage
[**discussionmessage_patch_object_v1**](ObjectDiscussionmessageApi.md#discussionmessage_patch_object_v1) | **PATCH** /1/object/discussionmessage/{pkiDiscussionmessageID} | Patch an existing Discussionmessage


# **discussionmessage_create_object_v1**
> DiscussionmessageCreateObjectV1Response discussionmessage_create_object_v1(discussionmessage_create_object_v1_request => $discussionmessage_create_object_v1_request)

Create a new Discussionmessage

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionmessageApi;
my $api_instance = EzmaxApi::ObjectDiscussionmessageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $discussionmessage_create_object_v1_request = EzmaxApi::Object::DiscussionmessageCreateObjectV1Request->new(); # DiscussionmessageCreateObjectV1Request | 

eval {
    my $result = $api_instance->discussionmessage_create_object_v1(discussionmessage_create_object_v1_request => $discussionmessage_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionmessageApi->discussionmessage_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **discussionmessage_create_object_v1_request** | [**DiscussionmessageCreateObjectV1Request**](DiscussionmessageCreateObjectV1Request.md)|  | 

### Return type

[**DiscussionmessageCreateObjectV1Response**](DiscussionmessageCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussionmessage_delete_object_v1**
> DiscussionmessageDeleteObjectV1Response discussionmessage_delete_object_v1(pki_discussionmessage_id => $pki_discussionmessage_id)

Delete an existing Discussionmessage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionmessageApi;
my $api_instance = EzmaxApi::ObjectDiscussionmessageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussionmessage_id = 56; # int | The unique ID of the Discussionmessage

eval {
    my $result = $api_instance->discussionmessage_delete_object_v1(pki_discussionmessage_id => $pki_discussionmessage_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionmessageApi->discussionmessage_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussionmessage_id** | **int**| The unique ID of the Discussionmessage | 

### Return type

[**DiscussionmessageDeleteObjectV1Response**](DiscussionmessageDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussionmessage_patch_object_v1**
> DiscussionmessagePatchObjectV1Response discussionmessage_patch_object_v1(pki_discussionmessage_id => $pki_discussionmessage_id, discussionmessage_patch_object_v1_request => $discussionmessage_patch_object_v1_request)

Patch an existing Discussionmessage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionmessageApi;
my $api_instance = EzmaxApi::ObjectDiscussionmessageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussionmessage_id = 56; # int | The unique ID of the Discussionmessage
my $discussionmessage_patch_object_v1_request = EzmaxApi::Object::DiscussionmessagePatchObjectV1Request->new(); # DiscussionmessagePatchObjectV1Request | 

eval {
    my $result = $api_instance->discussionmessage_patch_object_v1(pki_discussionmessage_id => $pki_discussionmessage_id, discussionmessage_patch_object_v1_request => $discussionmessage_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionmessageApi->discussionmessage_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussionmessage_id** | **int**| The unique ID of the Discussionmessage | 
 **discussionmessage_patch_object_v1_request** | [**DiscussionmessagePatchObjectV1Request**](DiscussionmessagePatchObjectV1Request.md)|  | 

### Return type

[**DiscussionmessagePatchObjectV1Response**](DiscussionmessagePatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

