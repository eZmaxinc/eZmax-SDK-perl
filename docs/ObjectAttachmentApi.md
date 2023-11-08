# EzmaxApi::ObjectAttachmentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectAttachmentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachment_download_v1**](ObjectAttachmentApi.md#attachment_download_v1) | **GET** /1/object/attachment/{pkiAttachmentID}/download | Retrieve the content


# **attachment_download_v1**
> AttachmentDownloadV1Response attachment_download_v1(pki_attachment_id => $pki_attachment_id)

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
);

my $pki_attachment_id = 56; # int | 

eval {
    my $result = $api_instance->attachment_download_v1(pki_attachment_id => $pki_attachment_id);
    print Dumper($result);
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

[**AttachmentDownloadV1Response**](AttachmentDownloadV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

