# EzmaxApi::ObjectInscriptiontempApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptiontempApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscriptiontemp_batch_download_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_batch_download_v1) | **POST** /1/object/inscriptiontemp/{pkiInscriptiontempID}/batchDownload | Download multiples attachments from a Inscriptiontemp
[**inscriptiontemp_get_attachments_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_attachments_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getAttachments | Retrieve Inscriptiontemp&#39;s attachments
[**inscriptiontemp_get_communication_count_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_communication_count_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getCommunicationCount | Retrieve Communication count
[**inscriptiontemp_get_communication_list_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_communication_list_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getCommunicationList | Retrieve Communication list
[**inscriptiontemp_get_communicationrecipients_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_communicationrecipients_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getCommunicationrecipients | Retrieve Inscriptiontemp&#39;s Communicationrecipient
[**inscriptiontemp_get_communicationsenders_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_communicationsenders_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getCommunicationsenders | Retrieve Inscriptiontemp&#39;s Communicationsender
[**inscriptiontemp_get_list_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_list_v1) | **GET** /1/object/inscriptiontemp/getList | Retrieve Inscriptiontemp list
[**inscriptiontemp_import_into_edmv1**](ObjectInscriptiontempApi.md#inscriptiontemp_import_into_edmv1) | **POST** /1/object/inscriptiontemp/{pkiInscriptiontempID}/importIntoEDM | Import attachments into the Inscriptiontemp


# **inscriptiontemp_batch_download_v1**
> string inscriptiontemp_batch_download_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id, inscriptiontemp_batch_download_v1_request => $inscriptiontemp_batch_download_v1_request)

Download multiples attachments from a Inscriptiontemp

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 
my $inscriptiontemp_batch_download_v1_request = EzmaxApi::Object::InscriptiontempBatchDownloadV1Request->new(); # InscriptiontempBatchDownloadV1Request | 

eval {
    my $result = $api_instance->inscriptiontemp_batch_download_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id, inscriptiontemp_batch_download_v1_request => $inscriptiontemp_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 
 **inscriptiontemp_batch_download_v1_request** | [**InscriptiontempBatchDownloadV1Request**](InscriptiontempBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_attachments_v1**
> InscriptiontempGetAttachmentsV1Response inscriptiontemp_get_attachments_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Inscriptiontemp's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_attachments_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetAttachmentsV1Response**](InscriptiontempGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_communication_count_v1**
> InscriptiontempGetCommunicationCountV1Response inscriptiontemp_get_communication_count_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_communication_count_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetCommunicationCountV1Response**](InscriptiontempGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_communication_list_v1**
> InscriptiontempGetCommunicationListV1Response inscriptiontemp_get_communication_list_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_communication_list_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetCommunicationListV1Response**](InscriptiontempGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_communicationrecipients_v1**
> InscriptiontempGetCommunicationrecipientsV1Response inscriptiontemp_get_communicationrecipients_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Inscriptiontemp's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_communicationrecipients_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetCommunicationrecipientsV1Response**](InscriptiontempGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_communicationsenders_v1**
> InscriptiontempGetCommunicationsendersV1Response inscriptiontemp_get_communicationsenders_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Inscriptiontemp's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_communicationsenders_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetCommunicationsendersV1Response**](InscriptiontempGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_get_list_v1**
> InscriptiontempGetListV1Response inscriptiontemp_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Inscriptiontemp list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eInscriptiontempStatus | Imported<br>Processed<br>Modified |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

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
    my $result = $api_instance->inscriptiontemp_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_list_v1: $@\n";
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

[**InscriptiontempGetListV1Response**](InscriptiontempGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptiontemp_import_into_edmv1**
> InscriptiontempImportIntoEDMV1Response inscriptiontemp_import_into_edmv1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id, inscriptiontemp_import_into_edmv1_request => $inscriptiontemp_import_into_edmv1_request)

Import attachments into the Inscriptiontemp



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 
my $inscriptiontemp_import_into_edmv1_request = EzmaxApi::Object::InscriptiontempImportIntoEDMV1Request->new(); # InscriptiontempImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->inscriptiontemp_import_into_edmv1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id, inscriptiontemp_import_into_edmv1_request => $inscriptiontemp_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 
 **inscriptiontemp_import_into_edmv1_request** | [**InscriptiontempImportIntoEDMV1Request**](InscriptiontempImportIntoEDMV1Request.md)|  | 

### Return type

[**InscriptiontempImportIntoEDMV1Response**](InscriptiontempImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

