# EzmaxApi::ObjectBankaccountApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectBankaccountApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bankaccount_batch_download_v1**](ObjectBankaccountApi.md#bankaccount_batch_download_v1) | **POST** /1/object/bankaccount/{pkiBankaccountID}/batchDownload | Download multiples attachments from a Bankaccount
[**bankaccount_get_attachments_v1**](ObjectBankaccountApi.md#bankaccount_get_attachments_v1) | **GET** /1/object/bankaccount/{pkiBankaccountID}/getAttachments | Retrieve Bankaccount&#39;s attachments
[**bankaccount_get_autocomplete_v2**](ObjectBankaccountApi.md#bankaccount_get_autocomplete_v2) | **GET** /2/object/bankaccount/getAutocomplete/{sSelector} | Retrieve Bankaccounts and IDs
[**bankaccount_import_into_edmv1**](ObjectBankaccountApi.md#bankaccount_import_into_edmv1) | **POST** /1/object/bankaccount/{pkiBankaccountID}/importIntoEDM | Import attachments into the Bankaccount


# **bankaccount_batch_download_v1**
> string bankaccount_batch_download_v1(pki_bankaccount_id => $pki_bankaccount_id, bankaccount_batch_download_v1_request => $bankaccount_batch_download_v1_request)

Download multiples attachments from a Bankaccount

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBankaccountApi;
my $api_instance = EzmaxApi::ObjectBankaccountApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_bankaccount_id = 56; # int | 
my $bankaccount_batch_download_v1_request = EzmaxApi::Object::BankaccountBatchDownloadV1Request->new(); # BankaccountBatchDownloadV1Request | 

eval {
    my $result = $api_instance->bankaccount_batch_download_v1(pki_bankaccount_id => $pki_bankaccount_id, bankaccount_batch_download_v1_request => $bankaccount_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBankaccountApi->bankaccount_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_bankaccount_id** | **int**|  | 
 **bankaccount_batch_download_v1_request** | [**BankaccountBatchDownloadV1Request**](BankaccountBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bankaccount_get_attachments_v1**
> BankaccountGetAttachmentsV1Response bankaccount_get_attachments_v1(pki_bankaccount_id => $pki_bankaccount_id)

Retrieve Bankaccount's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBankaccountApi;
my $api_instance = EzmaxApi::ObjectBankaccountApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_bankaccount_id = 56; # int | 

eval {
    my $result = $api_instance->bankaccount_get_attachments_v1(pki_bankaccount_id => $pki_bankaccount_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBankaccountApi->bankaccount_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_bankaccount_id** | **int**|  | 

### Return type

[**BankaccountGetAttachmentsV1Response**](BankaccountGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bankaccount_get_autocomplete_v2**
> BankaccountGetAutocompleteV2Response bankaccount_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Bankaccounts and IDs

Get the list of Bankaccount to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBankaccountApi;
my $api_instance = EzmaxApi::ObjectBankaccountApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Bankaccounts to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->bankaccount_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBankaccountApi->bankaccount_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Bankaccounts to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**BankaccountGetAutocompleteV2Response**](BankaccountGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bankaccount_import_into_edmv1**
> BankaccountImportIntoEDMV1Response bankaccount_import_into_edmv1(pki_bankaccount_id => $pki_bankaccount_id, bankaccount_import_into_edmv1_request => $bankaccount_import_into_edmv1_request)

Import attachments into the Bankaccount

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBankaccountApi;
my $api_instance = EzmaxApi::ObjectBankaccountApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_bankaccount_id = 56; # int | 
my $bankaccount_import_into_edmv1_request = EzmaxApi::Object::BankaccountImportIntoEDMV1Request->new(); # BankaccountImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->bankaccount_import_into_edmv1(pki_bankaccount_id => $pki_bankaccount_id, bankaccount_import_into_edmv1_request => $bankaccount_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBankaccountApi->bankaccount_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_bankaccount_id** | **int**|  | 
 **bankaccount_import_into_edmv1_request** | [**BankaccountImportIntoEDMV1Request**](BankaccountImportIntoEDMV1Request.md)|  | 

### Return type

[**BankaccountImportIntoEDMV1Response**](BankaccountImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

