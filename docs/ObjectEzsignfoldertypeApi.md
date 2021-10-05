# EzmaxApi::ObjectEzsignfoldertypeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfoldertypeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfoldertype_get_list_v1**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_get_list_v1) | **GET** /1/object/ezsignfoldertype/getList | Retrieve Ezsignfoldertype list


# **ezsignfoldertype_get_list_v1**
> EzsignfoldertypeGetListV1Response ezsignfoldertype_get_list_v1()

Retrieve Ezsignfoldertype list

## ⚠️EARLY ADOPTERS WARNING  ### This endpoint is not officially released. Its definition might still change and it might not be available in every environment and region.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->ezsignfoldertype_get_list_v1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_get_list_v1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EzsignfoldertypeGetListV1Response**](EzsignfoldertypeGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

