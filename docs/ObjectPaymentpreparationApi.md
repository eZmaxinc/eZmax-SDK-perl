# EzmaxApi::ObjectPaymentpreparationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectPaymentpreparationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentpreparation_batch_download_v1**](ObjectPaymentpreparationApi.md#paymentpreparation_batch_download_v1) | **POST** /1/object/paymentpreparation/{pkiPaymentpreparationID}/batchDownload | Download multiples attachments from an Paymentpreparation
[**paymentpreparation_get_attachments_v1**](ObjectPaymentpreparationApi.md#paymentpreparation_get_attachments_v1) | **GET** /1/object/paymentpreparation/{pkiPaymentpreparationID}/getAttachments | Retrieve Paymentpreparation&#39;s attachments
[**paymentpreparation_import_into_edmv1**](ObjectPaymentpreparationApi.md#paymentpreparation_import_into_edmv1) | **POST** /1/object/paymentpreparation/{pkiPaymentpreparationID}/importIntoEDM | Import attachments into the Paymentpreparation


# **paymentpreparation_batch_download_v1**
> string paymentpreparation_batch_download_v1(pki_paymentpreparation_id => $pki_paymentpreparation_id, paymentpreparation_batch_download_v1_request => $paymentpreparation_batch_download_v1_request)

Download multiples attachments from an Paymentpreparation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentpreparationApi;
my $api_instance = EzmaxApi::ObjectPaymentpreparationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentpreparation_id = 56; # int | 
my $paymentpreparation_batch_download_v1_request = EzmaxApi::Object::PaymentpreparationBatchDownloadV1Request->new(); # PaymentpreparationBatchDownloadV1Request | 

eval {
    my $result = $api_instance->paymentpreparation_batch_download_v1(pki_paymentpreparation_id => $pki_paymentpreparation_id, paymentpreparation_batch_download_v1_request => $paymentpreparation_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentpreparationApi->paymentpreparation_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentpreparation_id** | **int**|  | 
 **paymentpreparation_batch_download_v1_request** | [**PaymentpreparationBatchDownloadV1Request**](PaymentpreparationBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentpreparation_get_attachments_v1**
> PaymentpreparationGetAttachmentsV1Response paymentpreparation_get_attachments_v1(pki_paymentpreparation_id => $pki_paymentpreparation_id)

Retrieve Paymentpreparation's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentpreparationApi;
my $api_instance = EzmaxApi::ObjectPaymentpreparationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentpreparation_id = 56; # int | 

eval {
    my $result = $api_instance->paymentpreparation_get_attachments_v1(pki_paymentpreparation_id => $pki_paymentpreparation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentpreparationApi->paymentpreparation_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentpreparation_id** | **int**|  | 

### Return type

[**PaymentpreparationGetAttachmentsV1Response**](PaymentpreparationGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentpreparation_import_into_edmv1**
> PaymentpreparationImportIntoEDMV1Response paymentpreparation_import_into_edmv1(pki_paymentpreparation_id => $pki_paymentpreparation_id, paymentpreparation_import_into_edmv1_request => $paymentpreparation_import_into_edmv1_request)

Import attachments into the Paymentpreparation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentpreparationApi;
my $api_instance = EzmaxApi::ObjectPaymentpreparationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentpreparation_id = 56; # int | 
my $paymentpreparation_import_into_edmv1_request = EzmaxApi::Object::PaymentpreparationImportIntoEDMV1Request->new(); # PaymentpreparationImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->paymentpreparation_import_into_edmv1(pki_paymentpreparation_id => $pki_paymentpreparation_id, paymentpreparation_import_into_edmv1_request => $paymentpreparation_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentpreparationApi->paymentpreparation_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentpreparation_id** | **int**|  | 
 **paymentpreparation_import_into_edmv1_request** | [**PaymentpreparationImportIntoEDMV1Request**](PaymentpreparationImportIntoEDMV1Request.md)|  | 

### Return type

[**PaymentpreparationImportIntoEDMV1Response**](PaymentpreparationImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

