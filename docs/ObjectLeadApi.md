# EzmaxApi::ObjectLeadApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectLeadApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lead_batch_download_v1**](ObjectLeadApi.md#lead_batch_download_v1) | **POST** /1/object/lead/{pkiLeadID}/batchDownload | Download multiples attachments from a Lead
[**lead_get_attachments_v1**](ObjectLeadApi.md#lead_get_attachments_v1) | **GET** /1/object/lead/{pkiLeadID}/getAttachments | Retrieve Lead&#39;s attachments
[**lead_get_list_v1**](ObjectLeadApi.md#lead_get_list_v1) | **GET** /1/object/lead/getList | Retrieve Lead list
[**lead_import_into_edmv1**](ObjectLeadApi.md#lead_import_into_edmv1) | **POST** /1/object/lead/{pkiLeadID}/importIntoEDM | Import attachments into the Lead


# **lead_batch_download_v1**
> string lead_batch_download_v1(pki_lead_id => $pki_lead_id, lead_batch_download_v1_request => $lead_batch_download_v1_request)

Download multiples attachments from a Lead

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectLeadApi;
my $api_instance = EzmaxApi::ObjectLeadApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_lead_id = 56; # int | 
my $lead_batch_download_v1_request = EzmaxApi::Object::LeadBatchDownloadV1Request->new(); # LeadBatchDownloadV1Request | 

eval {
    my $result = $api_instance->lead_batch_download_v1(pki_lead_id => $pki_lead_id, lead_batch_download_v1_request => $lead_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectLeadApi->lead_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_lead_id** | **int**|  | 
 **lead_batch_download_v1_request** | [**LeadBatchDownloadV1Request**](LeadBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lead_get_attachments_v1**
> LeadGetAttachmentsV1Response lead_get_attachments_v1(pki_lead_id => $pki_lead_id)

Retrieve Lead's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectLeadApi;
my $api_instance = EzmaxApi::ObjectLeadApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_lead_id = 56; # int | 

eval {
    my $result = $api_instance->lead_get_attachments_v1(pki_lead_id => $pki_lead_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectLeadApi->lead_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_lead_id** | **int**|  | 

### Return type

[**LeadGetAttachmentsV1Response**](LeadGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lead_get_list_v1**
> LeadGetListV1Response lead_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Lead list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eLeadStatus | New<br>Dispatching<br>Assigned<br>Lost<br>Won |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectLeadApi;
my $api_instance = EzmaxApi::ObjectLeadApi->new(

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
    my $result = $api_instance->lead_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectLeadApi->lead_get_list_v1: $@\n";
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

[**LeadGetListV1Response**](LeadGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lead_import_into_edmv1**
> LeadImportIntoEDMV1Response lead_import_into_edmv1(pki_lead_id => $pki_lead_id, lead_import_into_edmv1_request => $lead_import_into_edmv1_request)

Import attachments into the Lead



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectLeadApi;
my $api_instance = EzmaxApi::ObjectLeadApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_lead_id = 56; # int | 
my $lead_import_into_edmv1_request = EzmaxApi::Object::LeadImportIntoEDMV1Request->new(); # LeadImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->lead_import_into_edmv1(pki_lead_id => $pki_lead_id, lead_import_into_edmv1_request => $lead_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectLeadApi->lead_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_lead_id** | **int**|  | 
 **lead_import_into_edmv1_request** | [**LeadImportIntoEDMV1Request**](LeadImportIntoEDMV1Request.md)|  | 

### Return type

[**LeadImportIntoEDMV1Response**](LeadImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

