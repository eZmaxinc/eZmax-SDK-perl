# EzmaxApi::ObjectEmployeeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEmployeeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employee_get_list_v1**](ObjectEmployeeApi.md#employee_get_list_v1) | **GET** /1/object/employee/getList | Retrieve Employee list
[**employee_import_into_edmv1**](ObjectEmployeeApi.md#employee_import_into_edmv1) | **POST** /1/object/employee/{pkiEmployeeID}/importIntoEDM | Import attachments into the Employee


# **employee_get_list_v1**
> EmployeeGetListV1Response employee_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Employee list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEmployeeApi;
my $api_instance = EzmaxApi::ObjectEmployeeApi->new(

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
    my $result = $api_instance->employee_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEmployeeApi->employee_get_list_v1: $@\n";
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

[**EmployeeGetListV1Response**](EmployeeGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employee_import_into_edmv1**
> EmployeeImportIntoEDMV1Response employee_import_into_edmv1(pki_employee_id => $pki_employee_id, employee_import_into_edmv1_request => $employee_import_into_edmv1_request)

Import attachments into the Employee



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEmployeeApi;
my $api_instance = EzmaxApi::ObjectEmployeeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_employee_id = 56; # int | 
my $employee_import_into_edmv1_request = EzmaxApi::Object::EmployeeImportIntoEDMV1Request->new(); # EmployeeImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->employee_import_into_edmv1(pki_employee_id => $pki_employee_id, employee_import_into_edmv1_request => $employee_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEmployeeApi->employee_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_employee_id** | **int**|  | 
 **employee_import_into_edmv1_request** | [**EmployeeImportIntoEDMV1Request**](EmployeeImportIntoEDMV1Request.md)|  | 

### Return type

[**EmployeeImportIntoEDMV1Response**](EmployeeImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

