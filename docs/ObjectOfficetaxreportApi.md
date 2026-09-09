# EzmaxApi::ObjectOfficetaxreportApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectOfficetaxreportApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**officetaxreport_batch_download_v1**](ObjectOfficetaxreportApi.md#officetaxreport_batch_download_v1) | **POST** /1/object/officetaxreport/{pkiOfficetaxreportID}/batchDownload | Download multiples attachments from an Officetaxreport
[**officetaxreport_get_attachments_v1**](ObjectOfficetaxreportApi.md#officetaxreport_get_attachments_v1) | **GET** /1/object/officetaxreport/{pkiOfficetaxreportID}/getAttachments | Retrieve Officetaxreport&#39;s attachments
[**officetaxreport_import_into_edmv1**](ObjectOfficetaxreportApi.md#officetaxreport_import_into_edmv1) | **POST** /1/object/officetaxreport/{pkiOfficetaxreportID}/importIntoEDM | Import attachments into the Officetaxreport


# **officetaxreport_batch_download_v1**
> string officetaxreport_batch_download_v1(pki_officetaxreport_id => $pki_officetaxreport_id, officetaxreport_batch_download_v1_request => $officetaxreport_batch_download_v1_request)

Download multiples attachments from an Officetaxreport

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOfficetaxreportApi;
my $api_instance = EzmaxApi::ObjectOfficetaxreportApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_officetaxreport_id = 56; # int | 
my $officetaxreport_batch_download_v1_request = EzmaxApi::Object::OfficetaxreportBatchDownloadV1Request->new(); # OfficetaxreportBatchDownloadV1Request | 

eval {
    my $result = $api_instance->officetaxreport_batch_download_v1(pki_officetaxreport_id => $pki_officetaxreport_id, officetaxreport_batch_download_v1_request => $officetaxreport_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOfficetaxreportApi->officetaxreport_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_officetaxreport_id** | **int**|  | 
 **officetaxreport_batch_download_v1_request** | [**OfficetaxreportBatchDownloadV1Request**](OfficetaxreportBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **officetaxreport_get_attachments_v1**
> OfficetaxreportGetAttachmentsV1Response officetaxreport_get_attachments_v1(pki_officetaxreport_id => $pki_officetaxreport_id)

Retrieve Officetaxreport's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOfficetaxreportApi;
my $api_instance = EzmaxApi::ObjectOfficetaxreportApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_officetaxreport_id = 56; # int | 

eval {
    my $result = $api_instance->officetaxreport_get_attachments_v1(pki_officetaxreport_id => $pki_officetaxreport_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOfficetaxreportApi->officetaxreport_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_officetaxreport_id** | **int**|  | 

### Return type

[**OfficetaxreportGetAttachmentsV1Response**](OfficetaxreportGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **officetaxreport_import_into_edmv1**
> OfficetaxreportImportIntoEDMV1Response officetaxreport_import_into_edmv1(pki_officetaxreport_id => $pki_officetaxreport_id, officetaxreport_import_into_edmv1_request => $officetaxreport_import_into_edmv1_request)

Import attachments into the Officetaxreport

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOfficetaxreportApi;
my $api_instance = EzmaxApi::ObjectOfficetaxreportApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_officetaxreport_id = 56; # int | 
my $officetaxreport_import_into_edmv1_request = EzmaxApi::Object::OfficetaxreportImportIntoEDMV1Request->new(); # OfficetaxreportImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->officetaxreport_import_into_edmv1(pki_officetaxreport_id => $pki_officetaxreport_id, officetaxreport_import_into_edmv1_request => $officetaxreport_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOfficetaxreportApi->officetaxreport_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_officetaxreport_id** | **int**|  | 
 **officetaxreport_import_into_edmv1_request** | [**OfficetaxreportImportIntoEDMV1Request**](OfficetaxreportImportIntoEDMV1Request.md)|  | 

### Return type

[**OfficetaxreportImportIntoEDMV1Response**](OfficetaxreportImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

