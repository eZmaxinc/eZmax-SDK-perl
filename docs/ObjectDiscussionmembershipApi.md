# EzmaxApi::ObjectDiscussionmembershipApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDiscussionmembershipApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discussionmembership_create_object_v1**](ObjectDiscussionmembershipApi.md#discussionmembership_create_object_v1) | **POST** /1/object/discussionmembership | Create a new Discussionmembership
[**discussionmembership_delete_object_v1**](ObjectDiscussionmembershipApi.md#discussionmembership_delete_object_v1) | **DELETE** /1/object/discussionmembership/{pkiDiscussionmembershipID} | Delete an existing Discussionmembership


# **discussionmembership_create_object_v1**
> DiscussionmembershipCreateObjectV1Response discussionmembership_create_object_v1(discussionmembership_create_object_v1_request => $discussionmembership_create_object_v1_request)

Create a new Discussionmembership

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionmembershipApi;
my $api_instance = EzmaxApi::ObjectDiscussionmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $discussionmembership_create_object_v1_request = EzmaxApi::Object::DiscussionmembershipCreateObjectV1Request->new(); # DiscussionmembershipCreateObjectV1Request | 

eval {
    my $result = $api_instance->discussionmembership_create_object_v1(discussionmembership_create_object_v1_request => $discussionmembership_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionmembershipApi->discussionmembership_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **discussionmembership_create_object_v1_request** | [**DiscussionmembershipCreateObjectV1Request**](DiscussionmembershipCreateObjectV1Request.md)|  | 

### Return type

[**DiscussionmembershipCreateObjectV1Response**](DiscussionmembershipCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discussionmembership_delete_object_v1**
> DiscussionmembershipDeleteObjectV1Response discussionmembership_delete_object_v1(pki_discussionmembership_id => $pki_discussionmembership_id)

Delete an existing Discussionmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDiscussionmembershipApi;
my $api_instance = EzmaxApi::ObjectDiscussionmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_discussionmembership_id = 56; # int | The unique ID of the Discussionmembership

eval {
    my $result = $api_instance->discussionmembership_delete_object_v1(pki_discussionmembership_id => $pki_discussionmembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDiscussionmembershipApi->discussionmembership_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_discussionmembership_id** | **int**| The unique ID of the Discussionmembership | 

### Return type

[**DiscussionmembershipDeleteObjectV1Response**](DiscussionmembershipDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

