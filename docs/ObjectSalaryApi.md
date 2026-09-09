# EzmaxApi::ObjectSalaryApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSalaryApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**salary_batch_download_v1**](ObjectSalaryApi.md#salary_batch_download_v1) | **POST** /1/object/salary/{pkiSalaryID}/batchDownload | Download multiples attachments from a Reconciliation
[**salary_get_attachments_v1**](ObjectSalaryApi.md#salary_get_attachments_v1) | **GET** /1/object/salary/{pkiSalaryID}/getAttachments | Retrieve Salary&#39;s attachments
[**salary_import_into_edmv1**](ObjectSalaryApi.md#salary_import_into_edmv1) | **POST** /1/object/salary/{pkiSalaryID}/importIntoEDM | Import attachments into the Salary


# **salary_batch_download_v1**
> string salary_batch_download_v1(pki_salary_id => $pki_salary_id, salary_batch_download_v1_request => $salary_batch_download_v1_request)

Download multiples attachments from a Reconciliation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSalaryApi;
my $api_instance = EzmaxApi::ObjectSalaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_salary_id = 56; # int | 
my $salary_batch_download_v1_request = EzmaxApi::Object::SalaryBatchDownloadV1Request->new(); # SalaryBatchDownloadV1Request | 

eval {
    my $result = $api_instance->salary_batch_download_v1(pki_salary_id => $pki_salary_id, salary_batch_download_v1_request => $salary_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSalaryApi->salary_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_salary_id** | **int**|  | 
 **salary_batch_download_v1_request** | [**SalaryBatchDownloadV1Request**](SalaryBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salary_get_attachments_v1**
> SalaryGetAttachmentsV1Response salary_get_attachments_v1(pki_salary_id => $pki_salary_id)

Retrieve Salary's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSalaryApi;
my $api_instance = EzmaxApi::ObjectSalaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_salary_id = 56; # int | 

eval {
    my $result = $api_instance->salary_get_attachments_v1(pki_salary_id => $pki_salary_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSalaryApi->salary_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_salary_id** | **int**|  | 

### Return type

[**SalaryGetAttachmentsV1Response**](SalaryGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salary_import_into_edmv1**
> SalaryImportIntoEDMV1Response salary_import_into_edmv1(pki_salary_id => $pki_salary_id, salary_import_into_edmv1_request => $salary_import_into_edmv1_request)

Import attachments into the Salary

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSalaryApi;
my $api_instance = EzmaxApi::ObjectSalaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_salary_id = 56; # int | 
my $salary_import_into_edmv1_request = EzmaxApi::Object::SalaryImportIntoEDMV1Request->new(); # SalaryImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->salary_import_into_edmv1(pki_salary_id => $pki_salary_id, salary_import_into_edmv1_request => $salary_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSalaryApi->salary_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_salary_id** | **int**|  | 
 **salary_import_into_edmv1_request** | [**SalaryImportIntoEDMV1Request**](SalaryImportIntoEDMV1Request.md)|  | 

### Return type

[**SalaryImportIntoEDMV1Response**](SalaryImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

