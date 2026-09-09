# EzmaxApi::ObjectFolderApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectFolderApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**folder_batch_download_v1**](ObjectFolderApi.md#folder_batch_download_v1) | **POST** /1/object/folder/{pkiFolderID}/batchDownload | Download multiples attachments from an Folder
[**folder_get_attachments_v1**](ObjectFolderApi.md#folder_get_attachments_v1) | **GET** /1/object/folder/{pkiFolderID}/getAttachments | Retrieve Folder&#39;s attachments
[**folder_import_into_edmv1**](ObjectFolderApi.md#folder_import_into_edmv1) | **POST** /1/object/folder/{pkiFolderID}/importIntoEDM | Import attachments into the Folder


# **folder_batch_download_v1**
> string folder_batch_download_v1(pki_folder_id => $pki_folder_id, folder_batch_download_v1_request => $folder_batch_download_v1_request)

Download multiples attachments from an Folder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectFolderApi;
my $api_instance = EzmaxApi::ObjectFolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_folder_id = 56; # int | 
my $folder_batch_download_v1_request = EzmaxApi::Object::FolderBatchDownloadV1Request->new(); # FolderBatchDownloadV1Request | 

eval {
    my $result = $api_instance->folder_batch_download_v1(pki_folder_id => $pki_folder_id, folder_batch_download_v1_request => $folder_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectFolderApi->folder_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_folder_id** | **int**|  | 
 **folder_batch_download_v1_request** | [**FolderBatchDownloadV1Request**](FolderBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **folder_get_attachments_v1**
> FolderGetAttachmentsV1Response folder_get_attachments_v1(pki_folder_id => $pki_folder_id)

Retrieve Folder's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectFolderApi;
my $api_instance = EzmaxApi::ObjectFolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_folder_id = 56; # int | 

eval {
    my $result = $api_instance->folder_get_attachments_v1(pki_folder_id => $pki_folder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectFolderApi->folder_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_folder_id** | **int**|  | 

### Return type

[**FolderGetAttachmentsV1Response**](FolderGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **folder_import_into_edmv1**
> FolderImportIntoEDMV1Response folder_import_into_edmv1(pki_folder_id => $pki_folder_id, folder_import_into_edmv1_request => $folder_import_into_edmv1_request)

Import attachments into the Folder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectFolderApi;
my $api_instance = EzmaxApi::ObjectFolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_folder_id = 56; # int | 
my $folder_import_into_edmv1_request = EzmaxApi::Object::FolderImportIntoEDMV1Request->new(); # FolderImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->folder_import_into_edmv1(pki_folder_id => $pki_folder_id, folder_import_into_edmv1_request => $folder_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectFolderApi->folder_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_folder_id** | **int**|  | 
 **folder_import_into_edmv1_request** | [**FolderImportIntoEDMV1Request**](FolderImportIntoEDMV1Request.md)|  | 

### Return type

[**FolderImportIntoEDMV1Response**](FolderImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

