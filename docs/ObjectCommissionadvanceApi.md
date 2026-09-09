# EzmaxApi::ObjectCommissionadvanceApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCommissionadvanceApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commissionadvance_batch_download_v1**](ObjectCommissionadvanceApi.md#commissionadvance_batch_download_v1) | **POST** /1/object/commissionadvance/{pkiCommissionadvanceID}/batchDownload | Download multiples attachments from a Commission advance
[**commissionadvance_get_attachments_v1**](ObjectCommissionadvanceApi.md#commissionadvance_get_attachments_v1) | **GET** /1/object/commissionadvance/{pkiCommissionadvanceID}/getAttachments | Retrieve Commissionadvance&#39;s attachments
[**commissionadvance_import_into_edmv1**](ObjectCommissionadvanceApi.md#commissionadvance_import_into_edmv1) | **POST** /1/object/commissionadvance/{pkiCommissionadvanceID}/importIntoEDM | Import attachments into the Commissionadvance


# **commissionadvance_batch_download_v1**
> string commissionadvance_batch_download_v1(pki_commissionadvance_id => $pki_commissionadvance_id, commissionadvance_batch_download_v1_request => $commissionadvance_batch_download_v1_request)

Download multiples attachments from a Commission advance

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCommissionadvanceApi;
my $api_instance = EzmaxApi::ObjectCommissionadvanceApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_commissionadvance_id = 56; # int | 
my $commissionadvance_batch_download_v1_request = EzmaxApi::Object::CommissionadvanceBatchDownloadV1Request->new(); # CommissionadvanceBatchDownloadV1Request | 

eval {
    my $result = $api_instance->commissionadvance_batch_download_v1(pki_commissionadvance_id => $pki_commissionadvance_id, commissionadvance_batch_download_v1_request => $commissionadvance_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCommissionadvanceApi->commissionadvance_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_commissionadvance_id** | **int**|  | 
 **commissionadvance_batch_download_v1_request** | [**CommissionadvanceBatchDownloadV1Request**](CommissionadvanceBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commissionadvance_get_attachments_v1**
> CommissionadvanceGetAttachmentsV1Response commissionadvance_get_attachments_v1(pki_commissionadvance_id => $pki_commissionadvance_id)

Retrieve Commissionadvance's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCommissionadvanceApi;
my $api_instance = EzmaxApi::ObjectCommissionadvanceApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_commissionadvance_id = 56; # int | 

eval {
    my $result = $api_instance->commissionadvance_get_attachments_v1(pki_commissionadvance_id => $pki_commissionadvance_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCommissionadvanceApi->commissionadvance_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_commissionadvance_id** | **int**|  | 

### Return type

[**CommissionadvanceGetAttachmentsV1Response**](CommissionadvanceGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commissionadvance_import_into_edmv1**
> CommissionadvanceImportIntoEDMV1Response commissionadvance_import_into_edmv1(pki_commissionadvance_id => $pki_commissionadvance_id, commissionadvance_import_into_edmv1_request => $commissionadvance_import_into_edmv1_request)

Import attachments into the Commissionadvance

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCommissionadvanceApi;
my $api_instance = EzmaxApi::ObjectCommissionadvanceApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_commissionadvance_id = 56; # int | 
my $commissionadvance_import_into_edmv1_request = EzmaxApi::Object::CommissionadvanceImportIntoEDMV1Request->new(); # CommissionadvanceImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->commissionadvance_import_into_edmv1(pki_commissionadvance_id => $pki_commissionadvance_id, commissionadvance_import_into_edmv1_request => $commissionadvance_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCommissionadvanceApi->commissionadvance_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_commissionadvance_id** | **int**|  | 
 **commissionadvance_import_into_edmv1_request** | [**CommissionadvanceImportIntoEDMV1Request**](CommissionadvanceImportIntoEDMV1Request.md)|  | 

### Return type

[**CommissionadvanceImportIntoEDMV1Response**](CommissionadvanceImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

