# EzmaxApi::ObjectModulegroupApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectModulegroupApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modulegroup_get_all_v1**](ObjectModulegroupApi.md#modulegroup_get_all_v1) | **GET** /1/object/modulegroup/getAll/{eContext} | Retrieve all Modulegroups


# **modulegroup_get_all_v1**
> ModulegroupGetAllV1Response modulegroup_get_all_v1(e_context => $e_context)

Retrieve all Modulegroups

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectModulegroupApi;
my $api_instance = EzmaxApi::ObjectModulegroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_context = "e_context_example"; # string | The context of the Modulegroup

eval {
    my $result = $api_instance->modulegroup_get_all_v1(e_context => $e_context);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectModulegroupApi->modulegroup_get_all_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_context** | **string**| The context of the Modulegroup | 

### Return type

[**ModulegroupGetAllV1Response**](ModulegroupGetAllV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

