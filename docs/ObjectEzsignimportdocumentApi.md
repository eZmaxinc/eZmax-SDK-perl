# EzmaxApi::ObjectEzsignimportdocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignimportdocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignimportdocument_download_v1**](ObjectEzsignimportdocumentApi.md#ezsignimportdocument_download_v1) | **GET** /1/object/ezsignimportdocument/{pkiEzsignimportdocumentID}/download | Retrieve the content


# **ezsignimportdocument_download_v1**
> EzsignimportdocumentDownloadV1Response ezsignimportdocument_download_v1(pki_ezsignimportdocument_id => $pki_ezsignimportdocument_id)

Retrieve the content

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignimportdocumentApi;
my $api_instance = EzmaxApi::ObjectEzsignimportdocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignimportdocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignimportdocument_download_v1(pki_ezsignimportdocument_id => $pki_ezsignimportdocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignimportdocumentApi->ezsignimportdocument_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignimportdocument_id** | **int**|  | 

### Return type

[**EzsignimportdocumentDownloadV1Response**](EzsignimportdocumentDownloadV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

