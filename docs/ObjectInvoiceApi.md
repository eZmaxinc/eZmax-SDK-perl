# EzmaxApi::ObjectInvoiceApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInvoiceApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoice_get_attachments_v1**](ObjectInvoiceApi.md#invoice_get_attachments_v1) | **GET** /1/object/invoice/{pkiInvoiceID}/getAttachments | Retrieve Invoice&#39;s Attachments
[**invoice_get_communication_list_v1**](ObjectInvoiceApi.md#invoice_get_communication_list_v1) | **GET** /1/object/invoice/{pkiInvoiceID}/getCommunicationList | Retrieve Communication list


# **invoice_get_attachments_v1**
> InvoiceGetAttachmentsV1Response invoice_get_attachments_v1(pki_invoice_id => $pki_invoice_id)

Retrieve Invoice's Attachments



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInvoiceApi;
my $api_instance = EzmaxApi::ObjectInvoiceApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_invoice_id = 56; # int | 

eval {
    my $result = $api_instance->invoice_get_attachments_v1(pki_invoice_id => $pki_invoice_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInvoiceApi->invoice_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_invoice_id** | **int**|  | 

### Return type

[**InvoiceGetAttachmentsV1Response**](InvoiceGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoice_get_communication_list_v1**
> InvoiceGetCommunicationListV1Response invoice_get_communication_list_v1(pki_invoice_id => $pki_invoice_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInvoiceApi;
my $api_instance = EzmaxApi::ObjectInvoiceApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_invoice_id = 56; # int | 

eval {
    my $result = $api_instance->invoice_get_communication_list_v1(pki_invoice_id => $pki_invoice_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInvoiceApi->invoice_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_invoice_id** | **int**|  | 

### Return type

[**InvoiceGetCommunicationListV1Response**](InvoiceGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

