# EzmaxApi::ObjectCommunicationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCommunicationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communication_get_object_v2**](ObjectCommunicationApi.md#communication_get_object_v2) | **GET** /2/object/communication/{pkiCommunicationID} | Retrieve an existing Communication


# **communication_get_object_v2**
> CommunicationGetObjectV2Response communication_get_object_v2(pki_communication_id => $pki_communication_id)

Retrieve an existing Communication



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
    my $result = $api_instance->communication_get_object_v2(pki_communication_id => $pki_communication_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCommunicationApi->communication_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_communication_id** | **int**|  | 

### Return type

[**CommunicationGetObjectV2Response**](CommunicationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

