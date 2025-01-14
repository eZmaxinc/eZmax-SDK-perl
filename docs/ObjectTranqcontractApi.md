# EzmaxApi::ObjectTranqcontractApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectTranqcontractApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tranqcontract_get_communication_count_v1**](ObjectTranqcontractApi.md#tranqcontract_get_communication_count_v1) | **GET** /1/object/tranqcontract/{pkiTranqcontractID}/getCommunicationCount | Retrieve Communication count
[**tranqcontract_get_communication_list_v1**](ObjectTranqcontractApi.md#tranqcontract_get_communication_list_v1) | **GET** /1/object/tranqcontract/{pkiTranqcontractID}/getCommunicationList | Retrieve Communication list
[**tranqcontract_get_communicationrecipients_v1**](ObjectTranqcontractApi.md#tranqcontract_get_communicationrecipients_v1) | **GET** /1/object/tranqcontract/{pkiTranqcontractID}/getCommunicationrecipients | Retrieve Tranqcontract&#39;s Communicationrecipient
[**tranqcontract_get_communicationsenders_v1**](ObjectTranqcontractApi.md#tranqcontract_get_communicationsenders_v1) | **GET** /1/object/tranqcontract/{pkiTranqcontractID}/getCommunicationsenders | Retrieve Tranqcontract&#39;s Communicationsender


# **tranqcontract_get_communication_count_v1**
> TranqcontractGetCommunicationCountV1Response tranqcontract_get_communication_count_v1(pki_tranqcontract_id => $pki_tranqcontract_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectTranqcontractApi;
my $api_instance = EzmaxApi::ObjectTranqcontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_tranqcontract_id = 56; # int | 

eval {
    my $result = $api_instance->tranqcontract_get_communication_count_v1(pki_tranqcontract_id => $pki_tranqcontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectTranqcontractApi->tranqcontract_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_tranqcontract_id** | **int**|  | 

### Return type

[**TranqcontractGetCommunicationCountV1Response**](TranqcontractGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tranqcontract_get_communication_list_v1**
> TranqcontractGetCommunicationListV1Response tranqcontract_get_communication_list_v1(pki_tranqcontract_id => $pki_tranqcontract_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectTranqcontractApi;
my $api_instance = EzmaxApi::ObjectTranqcontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_tranqcontract_id = 56; # int | 

eval {
    my $result = $api_instance->tranqcontract_get_communication_list_v1(pki_tranqcontract_id => $pki_tranqcontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectTranqcontractApi->tranqcontract_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_tranqcontract_id** | **int**|  | 

### Return type

[**TranqcontractGetCommunicationListV1Response**](TranqcontractGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tranqcontract_get_communicationrecipients_v1**
> TranqcontractGetCommunicationrecipientsV1Response tranqcontract_get_communicationrecipients_v1(pki_tranqcontract_id => $pki_tranqcontract_id)

Retrieve Tranqcontract's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectTranqcontractApi;
my $api_instance = EzmaxApi::ObjectTranqcontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_tranqcontract_id = 56; # int | 

eval {
    my $result = $api_instance->tranqcontract_get_communicationrecipients_v1(pki_tranqcontract_id => $pki_tranqcontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectTranqcontractApi->tranqcontract_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_tranqcontract_id** | **int**|  | 

### Return type

[**TranqcontractGetCommunicationrecipientsV1Response**](TranqcontractGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tranqcontract_get_communicationsenders_v1**
> TranqcontractGetCommunicationsendersV1Response tranqcontract_get_communicationsenders_v1(pki_tranqcontract_id => $pki_tranqcontract_id)

Retrieve Tranqcontract's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectTranqcontractApi;
my $api_instance = EzmaxApi::ObjectTranqcontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_tranqcontract_id = 56; # int | 

eval {
    my $result = $api_instance->tranqcontract_get_communicationsenders_v1(pki_tranqcontract_id => $pki_tranqcontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectTranqcontractApi->tranqcontract_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_tranqcontract_id** | **int**|  | 

### Return type

[**TranqcontractGetCommunicationsendersV1Response**](TranqcontractGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

