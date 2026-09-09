# EzmaxApi::ObjectDepositApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDepositApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deposit_batch_download_v1**](ObjectDepositApi.md#deposit_batch_download_v1) | **POST** /1/object/deposit/{pkiDepositID}/batchDownload | Download multiples attachments from a Deposit
[**deposit_get_attachments_v1**](ObjectDepositApi.md#deposit_get_attachments_v1) | **GET** /1/object/deposit/{pkiDepositID}/getAttachments | Retrieve Deposit&#39;s attachments
[**deposit_import_into_edmv1**](ObjectDepositApi.md#deposit_import_into_edmv1) | **POST** /1/object/deposit/{pkiDepositID}/importIntoEDM | Import attachments into the Deposit


# **deposit_batch_download_v1**
> string deposit_batch_download_v1(pki_deposit_id => $pki_deposit_id, deposit_batch_download_v1_request => $deposit_batch_download_v1_request)

Download multiples attachments from a Deposit

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDepositApi;
my $api_instance = EzmaxApi::ObjectDepositApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposit_id = 56; # int | 
my $deposit_batch_download_v1_request = EzmaxApi::Object::DepositBatchDownloadV1Request->new(); # DepositBatchDownloadV1Request | 

eval {
    my $result = $api_instance->deposit_batch_download_v1(pki_deposit_id => $pki_deposit_id, deposit_batch_download_v1_request => $deposit_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDepositApi->deposit_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposit_id** | **int**|  | 
 **deposit_batch_download_v1_request** | [**DepositBatchDownloadV1Request**](DepositBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deposit_get_attachments_v1**
> DepositGetAttachmentsV1Response deposit_get_attachments_v1(pki_deposit_id => $pki_deposit_id)

Retrieve Deposit's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDepositApi;
my $api_instance = EzmaxApi::ObjectDepositApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposit_id = 56; # int | 

eval {
    my $result = $api_instance->deposit_get_attachments_v1(pki_deposit_id => $pki_deposit_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDepositApi->deposit_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposit_id** | **int**|  | 

### Return type

[**DepositGetAttachmentsV1Response**](DepositGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deposit_import_into_edmv1**
> DepositImportIntoEDMV1Response deposit_import_into_edmv1(pki_deposit_id => $pki_deposit_id, deposit_import_into_edmv1_request => $deposit_import_into_edmv1_request)

Import attachments into the Deposit

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDepositApi;
my $api_instance = EzmaxApi::ObjectDepositApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposit_id = 56; # int | 
my $deposit_import_into_edmv1_request = EzmaxApi::Object::DepositImportIntoEDMV1Request->new(); # DepositImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->deposit_import_into_edmv1(pki_deposit_id => $pki_deposit_id, deposit_import_into_edmv1_request => $deposit_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDepositApi->deposit_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposit_id** | **int**|  | 
 **deposit_import_into_edmv1_request** | [**DepositImportIntoEDMV1Request**](DepositImportIntoEDMV1Request.md)|  | 

### Return type

[**DepositImportIntoEDMV1Response**](DepositImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

