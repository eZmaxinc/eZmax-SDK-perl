# EzmaxApi::ObjectElectronicfundstransferApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectElectronicfundstransferApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**electronicfundstransfer_get_communication_count_v1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_get_communication_count_v1) | **GET** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/getCommunicationCount | Retrieve Communication count
[**electronicfundstransfer_get_communication_list_v1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_get_communication_list_v1) | **GET** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/getCommunicationList | Retrieve Communication list
[**electronicfundstransfer_get_communicationrecipients_v1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_get_communicationrecipients_v1) | **GET** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/getCommunicationrecipients | Retrieve Electronicfundstransfer&#39;s Communicationrecipient
[**electronicfundstransfer_get_communicationsenders_v1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_get_communicationsenders_v1) | **GET** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/getCommunicationsenders | Retrieve Electronicfundstransfer&#39;s Communicationsender
[**electronicfundstransfer_import_into_edmv1**](ObjectElectronicfundstransferApi.md#electronicfundstransfer_import_into_edmv1) | **POST** /1/object/electronicfundstransfer/{pkiElectronicfundstransferID}/importIntoEDM | Import attachments into the Electronicfundstransfer


# **electronicfundstransfer_get_communication_count_v1**
> ElectronicfundstransferGetCommunicationCountV1Response electronicfundstransfer_get_communication_count_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id)

Retrieve Communication count



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
    my $result = $api_instance->electronicfundstransfer_get_communication_count_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectElectronicfundstransferApi->electronicfundstransfer_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_electronicfundstransfer_id** | **int**|  | 

### Return type

[**ElectronicfundstransferGetCommunicationCountV1Response**](ElectronicfundstransferGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **electronicfundstransfer_get_communicationrecipients_v1**
> ElectronicfundstransferGetCommunicationrecipientsV1Response electronicfundstransfer_get_communicationrecipients_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id)

Retrieve Electronicfundstransfer's Communicationrecipient



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
    my $result = $api_instance->electronicfundstransfer_get_communicationrecipients_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectElectronicfundstransferApi->electronicfundstransfer_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_electronicfundstransfer_id** | **int**|  | 

### Return type

[**ElectronicfundstransferGetCommunicationrecipientsV1Response**](ElectronicfundstransferGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **electronicfundstransfer_get_communicationsenders_v1**
> ElectronicfundstransferGetCommunicationsendersV1Response electronicfundstransfer_get_communicationsenders_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id)

Retrieve Electronicfundstransfer's Communicationsender



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
    my $result = $api_instance->electronicfundstransfer_get_communicationsenders_v1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectElectronicfundstransferApi->electronicfundstransfer_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_electronicfundstransfer_id** | **int**|  | 

### Return type

[**ElectronicfundstransferGetCommunicationsendersV1Response**](ElectronicfundstransferGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **electronicfundstransfer_import_into_edmv1**
> ElectronicfundstransferImportIntoEDMV1Response electronicfundstransfer_import_into_edmv1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id, electronicfundstransfer_import_into_edmv1_request => $electronicfundstransfer_import_into_edmv1_request)

Import attachments into the Electronicfundstransfer



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
my $electronicfundstransfer_import_into_edmv1_request = EzmaxApi::Object::ElectronicfundstransferImportIntoEDMV1Request->new(); # ElectronicfundstransferImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->electronicfundstransfer_import_into_edmv1(pki_electronicfundstransfer_id => $pki_electronicfundstransfer_id, electronicfundstransfer_import_into_edmv1_request => $electronicfundstransfer_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectElectronicfundstransferApi->electronicfundstransfer_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_electronicfundstransfer_id** | **int**|  | 
 **electronicfundstransfer_import_into_edmv1_request** | [**ElectronicfundstransferImportIntoEDMV1Request**](ElectronicfundstransferImportIntoEDMV1Request.md)|  | 

### Return type

[**ElectronicfundstransferImportIntoEDMV1Response**](ElectronicfundstransferImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

