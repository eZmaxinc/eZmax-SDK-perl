# EzmaxApi::ObjectDisclosureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDisclosureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disclosure_batch_download_v1**](ObjectDisclosureApi.md#disclosure_batch_download_v1) | **POST** /1/object/disclosure/{pkiDisclosureID}/batchDownload | Download multiples attachments from a Disclosure
[**disclosure_get_attachments_v1**](ObjectDisclosureApi.md#disclosure_get_attachments_v1) | **GET** /1/object/disclosure/{pkiDisclosureID}/getAttachments | Retrieve Disclosure&#39;s attachments
[**disclosure_import_into_edmv1**](ObjectDisclosureApi.md#disclosure_import_into_edmv1) | **POST** /1/object/disclosure/{pkiDisclosureID}/importIntoEDM | Import attachments into the Disclosure


# **disclosure_batch_download_v1**
> string disclosure_batch_download_v1(pki_disclosure_id => $pki_disclosure_id, disclosure_batch_download_v1_request => $disclosure_batch_download_v1_request)

Download multiples attachments from a Disclosure

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDisclosureApi;
my $api_instance = EzmaxApi::ObjectDisclosureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_disclosure_id = 56; # int | 
my $disclosure_batch_download_v1_request = EzmaxApi::Object::DisclosureBatchDownloadV1Request->new(); # DisclosureBatchDownloadV1Request | 

eval {
    my $result = $api_instance->disclosure_batch_download_v1(pki_disclosure_id => $pki_disclosure_id, disclosure_batch_download_v1_request => $disclosure_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDisclosureApi->disclosure_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_disclosure_id** | **int**|  | 
 **disclosure_batch_download_v1_request** | [**DisclosureBatchDownloadV1Request**](DisclosureBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disclosure_get_attachments_v1**
> DisclosureGetAttachmentsV1Response disclosure_get_attachments_v1(pki_disclosure_id => $pki_disclosure_id)

Retrieve Disclosure's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDisclosureApi;
my $api_instance = EzmaxApi::ObjectDisclosureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_disclosure_id = 56; # int | 

eval {
    my $result = $api_instance->disclosure_get_attachments_v1(pki_disclosure_id => $pki_disclosure_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDisclosureApi->disclosure_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_disclosure_id** | **int**|  | 

### Return type

[**DisclosureGetAttachmentsV1Response**](DisclosureGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disclosure_import_into_edmv1**
> DisclosureImportIntoEDMV1Response disclosure_import_into_edmv1(pki_disclosure_id => $pki_disclosure_id, disclosure_import_into_edmv1_request => $disclosure_import_into_edmv1_request)

Import attachments into the Disclosure

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDisclosureApi;
my $api_instance = EzmaxApi::ObjectDisclosureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_disclosure_id = 56; # int | 
my $disclosure_import_into_edmv1_request = EzmaxApi::Object::DisclosureImportIntoEDMV1Request->new(); # DisclosureImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->disclosure_import_into_edmv1(pki_disclosure_id => $pki_disclosure_id, disclosure_import_into_edmv1_request => $disclosure_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDisclosureApi->disclosure_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_disclosure_id** | **int**|  | 
 **disclosure_import_into_edmv1_request** | [**DisclosureImportIntoEDMV1Request**](DisclosureImportIntoEDMV1Request.md)|  | 

### Return type

[**DisclosureImportIntoEDMV1Response**](DisclosureImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

