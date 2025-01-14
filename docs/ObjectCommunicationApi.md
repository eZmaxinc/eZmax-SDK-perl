# EzmaxApi::ObjectCommunicationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCommunicationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communication_get_communication_body_v1**](ObjectCommunicationApi.md#communication_get_communication_body_v1) | **GET** /1/object/communication/{pkiCommunicationID}/getCommunicationBody | Retrieve the communication body.
[**communication_send_v1**](ObjectCommunicationApi.md#communication_send_v1) | **POST** /1/object/communication/send | Send a new Communication


# **communication_get_communication_body_v1**
> communication_get_communication_body_v1(pki_communication_id => $pki_communication_id)

Retrieve the communication body.

This endpoint returns the communication body.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCommunicationApi;
my $api_instance = EzmaxApi::ObjectCommunicationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_communication_id = 56; # int | 

eval {
    $api_instance->communication_get_communication_body_v1(pki_communication_id => $pki_communication_id);
};
if ($@) {
    warn "Exception when calling ObjectCommunicationApi->communication_get_communication_body_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_communication_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communication_send_v1**
> CommunicationSendV1Response communication_send_v1(communication_send_v1_request => $communication_send_v1_request)

Send a new Communication

The endpoint allows to send one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCommunicationApi;
my $api_instance = EzmaxApi::ObjectCommunicationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $communication_send_v1_request = EzmaxApi::Object::CommunicationSendV1Request->new(); # CommunicationSendV1Request | 

eval {
    my $result = $api_instance->communication_send_v1(communication_send_v1_request => $communication_send_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCommunicationApi->communication_send_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_send_v1_request** | [**CommunicationSendV1Request**](CommunicationSendV1Request.md)|  | 

### Return type

[**CommunicationSendV1Response**](CommunicationSendV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

