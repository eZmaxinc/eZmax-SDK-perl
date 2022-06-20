# EzmaxApi::ObjectNotificationtestApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectNotificationtestApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationtest_get_elements_v1**](ObjectNotificationtestApi.md#notificationtest_get_elements_v1) | **GET** /1/object/notificationtest/{pkiNotificationtestID}/getElements | Retrieve an existing Notificationtest&#39;s Elements


# **notificationtest_get_elements_v1**
> NotificationtestGetElementsV1Response notificationtest_get_elements_v1(pki_notificationtest_id => $pki_notificationtest_id)

Retrieve an existing Notificationtest's Elements



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectNotificationtestApi;
my $api_instance = EzmaxApi::ObjectNotificationtestApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_notificationtest_id = 56; # int | 

eval {
    my $result = $api_instance->notificationtest_get_elements_v1(pki_notificationtest_id => $pki_notificationtest_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectNotificationtestApi->notificationtest_get_elements_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_notificationtest_id** | **int**|  | 

### Return type

[**NotificationtestGetElementsV1Response**](NotificationtestGetElementsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

