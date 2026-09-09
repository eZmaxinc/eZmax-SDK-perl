# EzmaxApi::ObjectReconciliationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectReconciliationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reconciliation_batch_download_v1**](ObjectReconciliationApi.md#reconciliation_batch_download_v1) | **POST** /1/object/reconciliation/{pkiReconciliationID}/batchDownload | Download multiples attachments from a Reconciliation
[**reconciliation_get_attachments_v1**](ObjectReconciliationApi.md#reconciliation_get_attachments_v1) | **GET** /1/object/reconciliation/{pkiReconciliationID}/getAttachments | Retrieve Reconciliation&#39;s attachments
[**reconciliation_import_into_edmv1**](ObjectReconciliationApi.md#reconciliation_import_into_edmv1) | **POST** /1/object/reconciliation/{pkiReconciliationID}/importIntoEDM | Import attachments into the Reconciliation


# **reconciliation_batch_download_v1**
> string reconciliation_batch_download_v1(pki_reconciliation_id => $pki_reconciliation_id, reconciliation_batch_download_v1_request => $reconciliation_batch_download_v1_request)

Download multiples attachments from a Reconciliation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectReconciliationApi;
my $api_instance = EzmaxApi::ObjectReconciliationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_reconciliation_id = 56; # int | 
my $reconciliation_batch_download_v1_request = EzmaxApi::Object::ReconciliationBatchDownloadV1Request->new(); # ReconciliationBatchDownloadV1Request | 

eval {
    my $result = $api_instance->reconciliation_batch_download_v1(pki_reconciliation_id => $pki_reconciliation_id, reconciliation_batch_download_v1_request => $reconciliation_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectReconciliationApi->reconciliation_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_reconciliation_id** | **int**|  | 
 **reconciliation_batch_download_v1_request** | [**ReconciliationBatchDownloadV1Request**](ReconciliationBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconciliation_get_attachments_v1**
> ReconciliationGetAttachmentsV1Response reconciliation_get_attachments_v1(pki_reconciliation_id => $pki_reconciliation_id)

Retrieve Reconciliation's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectReconciliationApi;
my $api_instance = EzmaxApi::ObjectReconciliationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_reconciliation_id = 56; # int | 

eval {
    my $result = $api_instance->reconciliation_get_attachments_v1(pki_reconciliation_id => $pki_reconciliation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectReconciliationApi->reconciliation_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_reconciliation_id** | **int**|  | 

### Return type

[**ReconciliationGetAttachmentsV1Response**](ReconciliationGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconciliation_import_into_edmv1**
> ReconciliationImportIntoEDMV1Response reconciliation_import_into_edmv1(pki_reconciliation_id => $pki_reconciliation_id, reconciliation_import_into_edmv1_request => $reconciliation_import_into_edmv1_request)

Import attachments into the Reconciliation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectReconciliationApi;
my $api_instance = EzmaxApi::ObjectReconciliationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_reconciliation_id = 56; # int | 
my $reconciliation_import_into_edmv1_request = EzmaxApi::Object::ReconciliationImportIntoEDMV1Request->new(); # ReconciliationImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->reconciliation_import_into_edmv1(pki_reconciliation_id => $pki_reconciliation_id, reconciliation_import_into_edmv1_request => $reconciliation_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectReconciliationApi->reconciliation_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_reconciliation_id** | **int**|  | 
 **reconciliation_import_into_edmv1_request** | [**ReconciliationImportIntoEDMV1Request**](ReconciliationImportIntoEDMV1Request.md)|  | 

### Return type

[**ReconciliationImportIntoEDMV1Response**](ReconciliationImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

