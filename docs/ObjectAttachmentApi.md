# EzmaxApi::ObjectAttachmentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectAttachmentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachment_download_v1**](ObjectAttachmentApi.md#attachment_download_v1) | **GET** /1/object/attachment/{pkiAttachmentID}/download | Retrieve the content
[**attachment_get_attachmentlogs_v1**](ObjectAttachmentApi.md#attachment_get_attachmentlogs_v1) | **GET** /1/object/attachment/{pkiAttachmentID}/getAttachmentlogs | Retrieve the Attachmentlogs
[**attachment_rename_v1**](ObjectAttachmentApi.md#attachment_rename_v1) | **POST** /1/object/attachment/{pkiAttachmentID}/rename | Rename an Attachment


# **attachment_download_v1**
> attachment_download_v1(pki_attachment_id => $pki_attachment_id)

Retrieve the content

Using this endpoint, you can retrieve the content of an attachment.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAttachmentApi;
my $api_instance = EzmaxApi::ObjectAttachmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: Presigned
    api_key => {'sAuthorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'sAuthorization' => 'Bearer'},
);

my $pki_attachment_id = 56; # int | 

eval {
    $api_instance->attachment_download_v1(pki_attachment_id => $pki_attachment_id);
};
if ($@) {
    warn "Exception when calling ObjectAttachmentApi->attachment_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_attachment_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization), [Presigned](../README.md#Presigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachment_get_attachmentlogs_v1**
> AttachmentGetAttachmentlogsV1Response attachment_get_attachmentlogs_v1(pki_attachment_id => $pki_attachment_id)

Retrieve the Attachmentlogs

Using this endpoint, you can retrieve the Attachmentlogs of an attachment.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAttachmentApi;
my $api_instance = EzmaxApi::ObjectAttachmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_attachment_id = 56; # int | 

eval {
    my $result = $api_instance->attachment_get_attachmentlogs_v1(pki_attachment_id => $pki_attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAttachmentApi->attachment_get_attachmentlogs_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_attachment_id** | **int**|  | 

### Return type

[**AttachmentGetAttachmentlogsV1Response**](AttachmentGetAttachmentlogsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachment_rename_v1**
> AttachmentRenameV1Response attachment_rename_v1(pki_attachment_id => $pki_attachment_id, attachment_rename_v1_request => $attachment_rename_v1_request)

Rename an Attachment

The endpoint allows to change the attachment's file name and category.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAttachmentApi;
my $api_instance = EzmaxApi::ObjectAttachmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_attachment_id = 56; # int | 
my $attachment_rename_v1_request = EzmaxApi::Object::AttachmentRenameV1Request->new(); # AttachmentRenameV1Request | 

eval {
    my $result = $api_instance->attachment_rename_v1(pki_attachment_id => $pki_attachment_id, attachment_rename_v1_request => $attachment_rename_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAttachmentApi->attachment_rename_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_attachment_id** | **int**|  | 
 **attachment_rename_v1_request** | [**AttachmentRenameV1Request**](AttachmentRenameV1Request.md)|  | 

### Return type

[**AttachmentRenameV1Response**](AttachmentRenameV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

