# EzmaxApi::ObjectDiscussionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDiscussionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discussion_create_object_v1**](ObjectDiscussionApi.md#discussion_create_object_v1) | **POST** /1/object/discussion | Create a new Discussion
[**discussion_delete_object_v1**](ObjectDiscussionApi.md#discussion_delete_object_v1) | **DELETE** /1/object/discussion/{pkiDiscussionID} | Delete an existing Discussion
[**discussion_get_object_v2**](ObjectDiscussionApi.md#discussion_get_object_v2) | **GET** /2/object/discussion/{pkiDiscussionID} | Retrieve an existing Discussion
[**discussion_patch_object_v1**](ObjectDiscussionApi.md#discussion_patch_object_v1) | **PATCH** /1/object/discussion/{pkiDiscussionID} | Patch an existing Discussion
[**discussion_update_discussionreadstatus_v1**](ObjectDiscussionApi.md#discussion_update_discussionreadstatus_v1) | **POST** /1/object/discussion/{pkiDiscussionID}/updateDiscussionreadstatus | Update the read status of the discussion


# **discussion_create_object_v1**
> DiscussionCreateObjectV1Response discussion_create_object_v1(discussion_create_object_v1_request => $discussion_create_object_v1_request)

Create a new Discussion

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionApi;
my $api_instance = EzmaxApi::ObjectDiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $discussion_create_object_v1_request = EzmaxApi::Object::DiscussionCreateObjectV1Request->new(); # DiscussionCreateObjectV1Request | 

eval {
    my $result = $api_instance->discussion_create_object_v1(discussion_create_object_v1_request => $discussion_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionApi->discussion_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **discussion_create_object_v1_request** | [**DiscussionCreateObjectV1Request**](DiscussionCreateObjectV1Request.md)|  | 

### Return type

[**DiscussionCreateObjectV1Response**](DiscussionCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussion_delete_object_v1**
> CommonResponse discussion_delete_object_v1(pki_discussion_id => $pki_discussion_id)

Delete an existing Discussion



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionApi;
my $api_instance = EzmaxApi::ObjectDiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussion_id = 56; # int | The unique ID of the Discussion

eval {
    my $result = $api_instance->discussion_delete_object_v1(pki_discussion_id => $pki_discussion_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionApi->discussion_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussion_id** | **int**| The unique ID of the Discussion | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussion_get_object_v2**
> DiscussionGetObjectV2Response discussion_get_object_v2(pki_discussion_id => $pki_discussion_id)

Retrieve an existing Discussion



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionApi;
my $api_instance = EzmaxApi::ObjectDiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussion_id = 56; # int | The unique ID of the Discussion

eval {
    my $result = $api_instance->discussion_get_object_v2(pki_discussion_id => $pki_discussion_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionApi->discussion_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussion_id** | **int**| The unique ID of the Discussion | 

### Return type

[**DiscussionGetObjectV2Response**](DiscussionGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussion_patch_object_v1**
> CommonResponse discussion_patch_object_v1(pki_discussion_id => $pki_discussion_id, discussion_patch_object_v1_request => $discussion_patch_object_v1_request)

Patch an existing Discussion



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionApi;
my $api_instance = EzmaxApi::ObjectDiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussion_id = 56; # int | The unique ID of the Discussion
my $discussion_patch_object_v1_request = EzmaxApi::Object::DiscussionPatchObjectV1Request->new(); # DiscussionPatchObjectV1Request | 

eval {
    my $result = $api_instance->discussion_patch_object_v1(pki_discussion_id => $pki_discussion_id, discussion_patch_object_v1_request => $discussion_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionApi->discussion_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussion_id** | **int**| The unique ID of the Discussion | 
 **discussion_patch_object_v1_request** | [**DiscussionPatchObjectV1Request**](DiscussionPatchObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussion_update_discussionreadstatus_v1**
> CommonResponse discussion_update_discussionreadstatus_v1(pki_discussion_id => $pki_discussion_id, discussion_update_discussionreadstatus_v1_request => $discussion_update_discussionreadstatus_v1_request)

Update the read status of the discussion

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionApi;
my $api_instance = EzmaxApi::ObjectDiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussion_id = 56; # int | 
my $discussion_update_discussionreadstatus_v1_request = EzmaxApi::Object::DiscussionUpdateDiscussionreadstatusV1Request->new(); # DiscussionUpdateDiscussionreadstatusV1Request | 

eval {
    my $result = $api_instance->discussion_update_discussionreadstatus_v1(pki_discussion_id => $pki_discussion_id, discussion_update_discussionreadstatus_v1_request => $discussion_update_discussionreadstatus_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionApi->discussion_update_discussionreadstatus_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussion_id** | **int**|  | 
 **discussion_update_discussionreadstatus_v1_request** | [**DiscussionUpdateDiscussionreadstatusV1Request**](DiscussionUpdateDiscussionreadstatusV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

