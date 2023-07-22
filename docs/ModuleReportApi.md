# EzmaxApi::ModuleReportApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleReportApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**report_get_report_from_cache_v1**](ModuleReportApi.md#report_get_report_from_cache_v1) | **GET** /1/module/report/getReportFromCache/{sReportgroupCacheID} | Retrieve report from cache


# **report_get_report_from_cache_v1**
> CommonGetReportV1Response report_get_report_from_cache_v1(s_reportgroup_cache_id => $s_reportgroup_cache_id)

Retrieve report from cache

Retrieve a report that was previously generated and cached

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleReportApi;
my $api_instance = EzmaxApi::ModuleReportApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: Presigned
    api_key => {'sAuthorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'sAuthorization' => 'Bearer'},
);

my $s_reportgroup_cache_id = "s_reportgroup_cache_id_example"; # string | 

eval {
    my $result = $api_instance->report_get_report_from_cache_v1(s_reportgroup_cache_id => $s_reportgroup_cache_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleReportApi->report_get_report_from_cache_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_reportgroup_cache_id** | **string**|  | 

### Return type

[**CommonGetReportV1Response**](CommonGetReportV1Response.md)

### Authorization

[Authorization](../README.md#Authorization), [Presigned](../README.md#Presigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/zip, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

