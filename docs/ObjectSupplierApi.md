# EzmaxApi::ObjectSupplierApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSupplierApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**supplier_get_list_v1**](ObjectSupplierApi.md#supplier_get_list_v1) | **GET** /1/object/supplier/getList | Retrieve Supplier list
[**supplier_import_into_edmv1**](ObjectSupplierApi.md#supplier_import_into_edmv1) | **POST** /1/object/supplier/{pkiSupplierID}/importIntoEDM | Import attachments into the Supplier


# **supplier_get_list_v1**
> SupplierGetListV1Response supplier_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Supplier list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplierApi;
my $api_instance = EzmaxApi::ObjectSupplierApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->supplier_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplierApi->supplier_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**SupplierGetListV1Response**](SupplierGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplier_import_into_edmv1**
> SupplierImportIntoEDMV1Response supplier_import_into_edmv1(pki_supplier_id => $pki_supplier_id, supplier_import_into_edmv1_request => $supplier_import_into_edmv1_request)

Import attachments into the Supplier



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplierApi;
my $api_instance = EzmaxApi::ObjectSupplierApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_supplier_id = 56; # int | 
my $supplier_import_into_edmv1_request = EzmaxApi::Object::SupplierImportIntoEDMV1Request->new(); # SupplierImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->supplier_import_into_edmv1(pki_supplier_id => $pki_supplier_id, supplier_import_into_edmv1_request => $supplier_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplierApi->supplier_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_supplier_id** | **int**|  | 
 **supplier_import_into_edmv1_request** | [**SupplierImportIntoEDMV1Request**](SupplierImportIntoEDMV1Request.md)|  | 

### Return type

[**SupplierImportIntoEDMV1Response**](SupplierImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

