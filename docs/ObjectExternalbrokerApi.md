# EzmaxApi::ObjectExternalbrokerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectExternalbrokerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**externalbroker_batch_download_v1**](ObjectExternalbrokerApi.md#externalbroker_batch_download_v1) | **POST** /1/object/externalbroker/{pkiExternalbrokerID}/batchDownload | Download multiples attachments from an Externalbroker
[**externalbroker_get_attachments_v1**](ObjectExternalbrokerApi.md#externalbroker_get_attachments_v1) | **GET** /1/object/externalbroker/{pkiExternalbrokerID}/getAttachments | Retrieve Externalbroker&#39;s attachments
[**externalbroker_import_into_edmv1**](ObjectExternalbrokerApi.md#externalbroker_import_into_edmv1) | **POST** /1/object/externalbroker/{pkiExternalbrokerID}/importIntoEDM | Import attachments into the Externalbroker


# **externalbroker_batch_download_v1**
> string externalbroker_batch_download_v1(pki_externalbroker_id => $pki_externalbroker_id, externalbroker_batch_download_v1_request => $externalbroker_batch_download_v1_request)

Download multiples attachments from an Externalbroker

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectExternalbrokerApi;
my $api_instance = EzmaxApi::ObjectExternalbrokerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_externalbroker_id = 56; # int | 
my $externalbroker_batch_download_v1_request = EzmaxApi::Object::ExternalbrokerBatchDownloadV1Request->new(); # ExternalbrokerBatchDownloadV1Request | 

eval {
    my $result = $api_instance->externalbroker_batch_download_v1(pki_externalbroker_id => $pki_externalbroker_id, externalbroker_batch_download_v1_request => $externalbroker_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectExternalbrokerApi->externalbroker_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_externalbroker_id** | **int**|  | 
 **externalbroker_batch_download_v1_request** | [**ExternalbrokerBatchDownloadV1Request**](ExternalbrokerBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalbroker_get_attachments_v1**
> ExternalbrokerGetAttachmentsV1Response externalbroker_get_attachments_v1(pki_externalbroker_id => $pki_externalbroker_id)

Retrieve Externalbroker's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectExternalbrokerApi;
my $api_instance = EzmaxApi::ObjectExternalbrokerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_externalbroker_id = 56; # int | 

eval {
    my $result = $api_instance->externalbroker_get_attachments_v1(pki_externalbroker_id => $pki_externalbroker_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectExternalbrokerApi->externalbroker_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_externalbroker_id** | **int**|  | 

### Return type

[**ExternalbrokerGetAttachmentsV1Response**](ExternalbrokerGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalbroker_import_into_edmv1**
> ExternalbrokerImportIntoEDMV1Response externalbroker_import_into_edmv1(pki_externalbroker_id => $pki_externalbroker_id, externalbroker_import_into_edmv1_request => $externalbroker_import_into_edmv1_request)

Import attachments into the Externalbroker



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectExternalbrokerApi;
my $api_instance = EzmaxApi::ObjectExternalbrokerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_externalbroker_id = 56; # int | 
my $externalbroker_import_into_edmv1_request = EzmaxApi::Object::ExternalbrokerImportIntoEDMV1Request->new(); # ExternalbrokerImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->externalbroker_import_into_edmv1(pki_externalbroker_id => $pki_externalbroker_id, externalbroker_import_into_edmv1_request => $externalbroker_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectExternalbrokerApi->externalbroker_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_externalbroker_id** | **int**|  | 
 **externalbroker_import_into_edmv1_request** | [**ExternalbrokerImportIntoEDMV1Request**](ExternalbrokerImportIntoEDMV1Request.md)|  | 

### Return type

[**ExternalbrokerImportIntoEDMV1Response**](ExternalbrokerImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

