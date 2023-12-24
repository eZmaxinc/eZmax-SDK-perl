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
[**attachment_get_download_url_v1**](ObjectAttachmentApi.md#attachment_get_download_url_v1) | **GET** /1/object/attachment/{pkiAttachmentID}/getDownloadUrl | Retrieve a URL to download attachments.


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

# **attachment_get_download_url_v1**
> AttachmentGetDownloadUrlV1Response attachment_get_download_url_v1(pki_attachment_id => $pki_attachment_id)

Retrieve a URL to download attachments.

This endpoint returns an URL to download the attachment.  These links will expire after 5 minutes so the download of the file should be made soon after retrieving the link.

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
    my $result = $api_instance->attachment_get_download_url_v1(pki_attachment_id => $pki_attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAttachmentApi->attachment_get_download_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_attachment_id** | **int**|  | 

### Return type

[**AttachmentGetDownloadUrlV1Response**](AttachmentGetDownloadUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

