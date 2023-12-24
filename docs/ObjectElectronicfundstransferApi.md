# EzmaxApi::ObjectElectronicfundstransferApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectElectronicfundstransferApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**electronicfundstransfer_get_communication_list_v1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_get_communication_list_v1) | **GET** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/getCommunicationList | Retrieve Communication list


# **electronicfundstransfer_get_communication_list_v1**
> ElectronicfundstransferGetCommunicationListV1Response electronicfundstransfer_get_communication_list_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectElectronicfundstransferApi;
my $api_instance = EzmaxApi::ObjectElectronicfundstransferApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_electronicfundstransfer_id = 56; # int | 

eval {
    my $result = $api_instance->electronicfundstransfer_get_communication_list_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectElectronicfundstransferApi->electronicfundstransfer_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_electronicfundstransfer_id** | **int**|  | 

### Return type

[**ElectronicfundstransferGetCommunicationListV1Response**](ElectronicfundstransferGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

