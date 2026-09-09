# EzmaxApi::ObjectPurchaseApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectPurchaseApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**purchase_batch_download_v1**](ObjectPurchaseApi.md#purchase_batch_download_v1) | **POST** /1/object/purchase/{pkiPurchaseID}/batchDownload | Download multiples attachments from a Purchase
[**purchase_get_attachments_v1**](ObjectPurchaseApi.md#purchase_get_attachments_v1) | **GET** /1/object/purchase/{pkiPurchaseID}/getAttachments | Retrieve Purchase&#39;s attachments
[**purchase_import_into_edmv1**](ObjectPurchaseApi.md#purchase_import_into_edmv1) | **POST** /1/object/purchase/{pkiPurchaseID}/importIntoEDM | Import attachments into the Purchase


# **purchase_batch_download_v1**
> string purchase_batch_download_v1(pki_purchase_id => $pki_purchase_id, purchase_batch_download_v1_request => $purchase_batch_download_v1_request)

Download multiples attachments from a Purchase

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPurchaseApi;
my $api_instance = EzmaxApi::ObjectPurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_purchase_id = 56; # int | 
my $purchase_batch_download_v1_request = EzmaxApi::Object::PurchaseBatchDownloadV1Request->new(); # PurchaseBatchDownloadV1Request | 

eval {
    my $result = $api_instance->purchase_batch_download_v1(pki_purchase_id => $pki_purchase_id, purchase_batch_download_v1_request => $purchase_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPurchaseApi->purchase_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_purchase_id** | **int**|  | 
 **purchase_batch_download_v1_request** | [**PurchaseBatchDownloadV1Request**](PurchaseBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchase_get_attachments_v1**
> PurchaseGetAttachmentsV1Response purchase_get_attachments_v1(pki_purchase_id => $pki_purchase_id)

Retrieve Purchase's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPurchaseApi;
my $api_instance = EzmaxApi::ObjectPurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_purchase_id = 56; # int | 

eval {
    my $result = $api_instance->purchase_get_attachments_v1(pki_purchase_id => $pki_purchase_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPurchaseApi->purchase_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_purchase_id** | **int**|  | 

### Return type

[**PurchaseGetAttachmentsV1Response**](PurchaseGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchase_import_into_edmv1**
> PurchaseImportIntoEDMV1Response purchase_import_into_edmv1(pki_purchase_id => $pki_purchase_id, purchase_import_into_edmv1_request => $purchase_import_into_edmv1_request)

Import attachments into the Purchase

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPurchaseApi;
my $api_instance = EzmaxApi::ObjectPurchaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_purchase_id = 56; # int | 
my $purchase_import_into_edmv1_request = EzmaxApi::Object::PurchaseImportIntoEDMV1Request->new(); # PurchaseImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->purchase_import_into_edmv1(pki_purchase_id => $pki_purchase_id, purchase_import_into_edmv1_request => $purchase_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPurchaseApi->purchase_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_purchase_id** | **int**|  | 
 **purchase_import_into_edmv1_request** | [**PurchaseImportIntoEDMV1Request**](PurchaseImportIntoEDMV1Request.md)|  | 

### Return type

[**PurchaseImportIntoEDMV1Response**](PurchaseImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

