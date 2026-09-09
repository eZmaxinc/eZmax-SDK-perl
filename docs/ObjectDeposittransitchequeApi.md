# EzmaxApi::ObjectDeposittransitchequeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDeposittransitchequeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deposittransitcheque_batch_download_v1**](ObjectDeposittransitchequeApi.md#deposittransitcheque_batch_download_v1) | **POST** /1/object/deposittransitcheque/{pkiDeposittransitchequeID}/batchDownload | Download multiples attachments from a Deposittransitcheque
[**deposittransitcheque_get_attachments_v1**](ObjectDeposittransitchequeApi.md#deposittransitcheque_get_attachments_v1) | **GET** /1/object/deposittransitcheque/{pkiDeposittransitchequeID}/getAttachments | Retrieve Deposittransitcheque&#39;s attachments
[**deposittransitcheque_import_into_edmv1**](ObjectDeposittransitchequeApi.md#deposittransitcheque_import_into_edmv1) | **POST** /1/object/deposittransitcheque/{pkiDeposittransitchequeID}/importIntoEDM | Import attachments into the Deposittransitcheque


# **deposittransitcheque_batch_download_v1**
> string deposittransitcheque_batch_download_v1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id, deposittransitcheque_batch_download_v1_request => $deposittransitcheque_batch_download_v1_request)

Download multiples attachments from a Deposittransitcheque

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDeposittransitchequeApi;
my $api_instance = EzmaxApi::ObjectDeposittransitchequeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposittransitcheque_id = 56; # int | 
my $deposittransitcheque_batch_download_v1_request = EzmaxApi::Object::DeposittransitchequeBatchDownloadV1Request->new(); # DeposittransitchequeBatchDownloadV1Request | 

eval {
    my $result = $api_instance->deposittransitcheque_batch_download_v1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id, deposittransitcheque_batch_download_v1_request => $deposittransitcheque_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDeposittransitchequeApi->deposittransitcheque_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposittransitcheque_id** | **int**|  | 
 **deposittransitcheque_batch_download_v1_request** | [**DeposittransitchequeBatchDownloadV1Request**](DeposittransitchequeBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deposittransitcheque_get_attachments_v1**
> DeposittransitchequeGetAttachmentsV1Response deposittransitcheque_get_attachments_v1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id)

Retrieve Deposittransitcheque's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDeposittransitchequeApi;
my $api_instance = EzmaxApi::ObjectDeposittransitchequeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposittransitcheque_id = 56; # int | 

eval {
    my $result = $api_instance->deposittransitcheque_get_attachments_v1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDeposittransitchequeApi->deposittransitcheque_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposittransitcheque_id** | **int**|  | 

### Return type

[**DeposittransitchequeGetAttachmentsV1Response**](DeposittransitchequeGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deposittransitcheque_import_into_edmv1**
> DeposittransitchequeImportIntoEDMV1Response deposittransitcheque_import_into_edmv1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id, deposittransitcheque_import_into_edmv1_request => $deposittransitcheque_import_into_edmv1_request)

Import attachments into the Deposittransitcheque

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDeposittransitchequeApi;
my $api_instance = EzmaxApi::ObjectDeposittransitchequeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_deposittransitcheque_id = 56; # int | 
my $deposittransitcheque_import_into_edmv1_request = EzmaxApi::Object::DeposittransitchequeImportIntoEDMV1Request->new(); # DeposittransitchequeImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->deposittransitcheque_import_into_edmv1(pki_deposittransitcheque_id => $pki_deposittransitcheque_id, deposittransitcheque_import_into_edmv1_request => $deposittransitcheque_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDeposittransitchequeApi->deposittransitcheque_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_deposittransitcheque_id** | **int**|  | 
 **deposittransitcheque_import_into_edmv1_request** | [**DeposittransitchequeImportIntoEDMV1Request**](DeposittransitchequeImportIntoEDMV1Request.md)|  | 

### Return type

[**DeposittransitchequeImportIntoEDMV1Response**](DeposittransitchequeImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

