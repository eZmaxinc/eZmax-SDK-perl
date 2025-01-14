# EzmaxApi::ObjectRejectedoffertopurchaseApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectRejectedoffertopurchaseApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rejectedoffertopurchase_get_communication_count_v1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_get_communication_count_v1) | **GET** /1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/getCommunicationCount | Retrieve Communication count
[**rejectedoffertopurchase_get_communication_list_v1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_get_communication_list_v1) | **GET** /1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/getCommunicationList | Retrieve Communication list
[**rejectedoffertopurchase_get_communicationrecipients_v1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_get_communicationrecipients_v1) | **GET** /1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/getCommunicationrecipients | Retrieve Rejectedoffertopurchase&#39;s Communicationrecipient
[**rejectedoffertopurchase_get_communicationsenders_v1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_get_communicationsenders_v1) | **GET** /1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/getCommunicationsenders | Retrieve Rejectedoffertopurchase&#39;s Communicationsender


# **rejectedoffertopurchase_get_communication_count_v1**
> RejectedoffertopurchaseGetCommunicationCountV1Response rejectedoffertopurchase_get_communication_count_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectRejectedoffertopurchaseApi;
my $api_instance = EzmaxApi::ObjectRejectedoffertopurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_rejectedoffertopurchase_id = 56; # int | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_get_communication_count_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_rejectedoffertopurchase_id** | **int**|  | 

### Return type

[**RejectedoffertopurchaseGetCommunicationCountV1Response**](RejectedoffertopurchaseGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectedoffertopurchase_get_communication_list_v1**
> RejectedoffertopurchaseGetCommunicationListV1Response rejectedoffertopurchase_get_communication_list_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectRejectedoffertopurchaseApi;
my $api_instance = EzmaxApi::ObjectRejectedoffertopurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_rejectedoffertopurchase_id = 56; # int | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_get_communication_list_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_rejectedoffertopurchase_id** | **int**|  | 

### Return type

[**RejectedoffertopurchaseGetCommunicationListV1Response**](RejectedoffertopurchaseGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectedoffertopurchase_get_communicationrecipients_v1**
> RejectedoffertopurchaseGetCommunicationrecipientsV1Response rejectedoffertopurchase_get_communicationrecipients_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id)

Retrieve Rejectedoffertopurchase's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectRejectedoffertopurchaseApi;
my $api_instance = EzmaxApi::ObjectRejectedoffertopurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_rejectedoffertopurchase_id = 56; # int | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_get_communicationrecipients_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_rejectedoffertopurchase_id** | **int**|  | 

### Return type

[**RejectedoffertopurchaseGetCommunicationrecipientsV1Response**](RejectedoffertopurchaseGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectedoffertopurchase_get_communicationsenders_v1**
> RejectedoffertopurchaseGetCommunicationsendersV1Response rejectedoffertopurchase_get_communicationsenders_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id)

Retrieve Rejectedoffertopurchase's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectRejectedoffertopurchaseApi;
my $api_instance = EzmaxApi::ObjectRejectedoffertopurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_rejectedoffertopurchase_id = 56; # int | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_get_communicationsenders_v1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_rejectedoffertopurchase_id** | **int**|  | 

### Return type

[**RejectedoffertopurchaseGetCommunicationsendersV1Response**](RejectedoffertopurchaseGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

