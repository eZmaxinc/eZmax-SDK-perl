# EzmaxApi::ObjectNotificationsectionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectNotificationsectionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsection_get_notificationtests_v1**](ObjectNotificationsectionApi.md#notificationsection_get_notificationtests_v1) | **GET** /1/object/notificationsection/{pkiNotificationsectionID}/getNotificationtests | Retrieve an existing Notificationsection&#39;s Notificationtests


# **notificationsection_get_notificationtests_v1**
> NotificationsectionGetNotificationtestsV1Response notificationsection_get_notificationtests_v1(pki_notificationsection_id => $pki_notificationsection_id, b_show_hidden => $b_show_hidden)

Retrieve an existing Notificationsection's Notificationtests



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectNotificationsectionApi;
my $api_instance = EzmaxApi::ObjectNotificationsectionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_notificationsection_id = 56; # int | 
my $b_show_hidden = null; # boolean | Whether or not to return the hidden Notificationtests

eval {
    my $result = $api_instance->notificationsection_get_notificationtests_v1(pki_notificationsection_id => $pki_notificationsection_id, b_show_hidden => $b_show_hidden);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectNotificationsectionApi->notificationsection_get_notificationtests_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_notificationsection_id** | **int**|  | 
 **b_show_hidden** | **boolean**| Whether or not to return the hidden Notificationtests | 

### Return type

[**NotificationsectionGetNotificationtestsV1Response**](NotificationsectionGetNotificationtestsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

