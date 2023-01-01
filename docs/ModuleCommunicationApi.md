# EzmaxApi::ModuleCommunicationApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleCommunicationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**communication_get_communication_count_v1**](ModuleCommunicationApi.md#communication_get_communication_count_v1) | **GET** /1/module/communication/getCommunicationCount | Get the number of communication
[**communication_get_communication_list_v1**](ModuleCommunicationApi.md#communication_get_communication_list_v1) | **GET** /1/module/communication/getCommunicationList | Retrieve communication list


# **communication_get_communication_count_v1**
> CommunicationGetCountV1Response communication_get_communication_count_v1(e_communication_module => $e_communication_module, pki_ezsignfolder_id => $pki_ezsignfolder_id)

Get the number of communication

Get the number of communication in specified module

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleCommunicationApi;
my $api_instance = EzmaxApi::ModuleCommunicationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_communication_module = "e_communication_module_example"; # string | Specify the requested module
my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder

eval {
    my $result = $api_instance->communication_get_communication_count_v1(e_communication_module => $e_communication_module, pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleCommunicationApi->communication_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_communication_module** | **string**| Specify the requested module | 
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | [optional] 

### Return type

[**CommunicationGetCountV1Response**](CommunicationGetCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **communication_get_communication_list_v1**
> CommunicationGetListV1Response communication_get_communication_list_v1(e_communication_module => $e_communication_module, pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve communication list

Retrieve communication list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleCommunicationApi;
my $api_instance = EzmaxApi::ModuleCommunicationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_communication_module = "e_communication_module_example"; # string | Specify the requested module
my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder

eval {
    my $result = $api_instance->communication_get_communication_list_v1(e_communication_module => $e_communication_module, pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleCommunicationApi->communication_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_communication_module** | **string**| Specify the requested module | 
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | [optional] 

### Return type

[**CommunicationGetListV1Response**](CommunicationGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

