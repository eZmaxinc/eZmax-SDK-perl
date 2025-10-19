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
[**rejectedoffertopurchase_get_list_v1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_get_list_v1) | **GET** /1/object/rejectedoffertopurchase/getList | Retrieve Rejectedoffertopurchase list
[**rejectedoffertopurchase_import_into_edmv1**](ObjectRejectedoffertopurchaseApi.md#rejectedoffertopurchase_import_into_edmv1) | **POST** /1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/importIntoEDM | Import attachments into the Rejectedoffertopurchase


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

# **rejectedoffertopurchase_get_list_v1**
> RejectedoffertopurchaseGetListV1Response rejectedoffertopurchase_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Rejectedoffertopurchase list



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

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**RejectedoffertopurchaseGetListV1Response**](RejectedoffertopurchaseGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectedoffertopurchase_import_into_edmv1**
> RejectedoffertopurchaseImportIntoEDMV1Response rejectedoffertopurchase_import_into_edmv1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id, rejectedoffertopurchase_import_into_edmv1_request => $rejectedoffertopurchase_import_into_edmv1_request)

Import attachments into the Rejectedoffertopurchase



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
my $rejectedoffertopurchase_import_into_edmv1_request = EzmaxApi::Object::RejectedoffertopurchaseImportIntoEDMV1Request->new(); # RejectedoffertopurchaseImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->rejectedoffertopurchase_import_into_edmv1(pki_rejectedoffertopurchase_id => $pki_rejectedoffertopurchase_id, rejectedoffertopurchase_import_into_edmv1_request => $rejectedoffertopurchase_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectRejectedoffertopurchaseApi->rejectedoffertopurchase_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_rejectedoffertopurchase_id** | **int**|  | 
 **rejectedoffertopurchase_import_into_edmv1_request** | [**RejectedoffertopurchaseImportIntoEDMV1Request**](RejectedoffertopurchaseImportIntoEDMV1Request.md)|  | 

### Return type

[**RejectedoffertopurchaseImportIntoEDMV1Response**](RejectedoffertopurchaseImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

