# EzmaxApi::ObjectNotaryApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectNotaryApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notary_batch_download_v1**](ObjectNotaryApi.md#notary_batch_download_v1) | **POST** /1/object/notary/{pkiNotaryID}/batchDownload | Download multiples attachments from a Notary
[**notary_get_attachments_v1**](ObjectNotaryApi.md#notary_get_attachments_v1) | **GET** /1/object/notary/{pkiNotaryID}/getAttachments | Retrieve Notary&#39;s attachments
[**notary_import_into_edmv1**](ObjectNotaryApi.md#notary_import_into_edmv1) | **POST** /1/object/notary/{pkiNotaryID}/importIntoEDM | Import attachments into the Notary


# **notary_batch_download_v1**
> string notary_batch_download_v1(pki_notary_id => $pki_notary_id, notary_batch_download_v1_request => $notary_batch_download_v1_request)

Download multiples attachments from a Notary

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectNotaryApi;
my $api_instance = EzmaxApi::ObjectNotaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_notary_id = 56; # int | 
my $notary_batch_download_v1_request = EzmaxApi::Object::NotaryBatchDownloadV1Request->new(); # NotaryBatchDownloadV1Request | 

eval {
    my $result = $api_instance->notary_batch_download_v1(pki_notary_id => $pki_notary_id, notary_batch_download_v1_request => $notary_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectNotaryApi->notary_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_notary_id** | **int**|  | 
 **notary_batch_download_v1_request** | [**NotaryBatchDownloadV1Request**](NotaryBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notary_get_attachments_v1**
> NotaryGetAttachmentsV1Response notary_get_attachments_v1(pki_notary_id => $pki_notary_id)

Retrieve Notary's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectNotaryApi;
my $api_instance = EzmaxApi::ObjectNotaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_notary_id = 56; # int | 

eval {
    my $result = $api_instance->notary_get_attachments_v1(pki_notary_id => $pki_notary_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectNotaryApi->notary_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_notary_id** | **int**|  | 

### Return type

[**NotaryGetAttachmentsV1Response**](NotaryGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notary_import_into_edmv1**
> NotaryImportIntoEDMV1Response notary_import_into_edmv1(pki_notary_id => $pki_notary_id, notary_import_into_edmv1_request => $notary_import_into_edmv1_request)

Import attachments into the Notary

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectNotaryApi;
my $api_instance = EzmaxApi::ObjectNotaryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_notary_id = 56; # int | 
my $notary_import_into_edmv1_request = EzmaxApi::Object::NotaryImportIntoEDMV1Request->new(); # NotaryImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->notary_import_into_edmv1(pki_notary_id => $pki_notary_id, notary_import_into_edmv1_request => $notary_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectNotaryApi->notary_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_notary_id** | **int**|  | 
 **notary_import_into_edmv1_request** | [**NotaryImportIntoEDMV1Request**](NotaryImportIntoEDMV1Request.md)|  | 

### Return type

[**NotaryImportIntoEDMV1Response**](NotaryImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

