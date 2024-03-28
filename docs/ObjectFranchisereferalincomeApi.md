# EzmaxApi::ObjectFranchisereferalincomeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectFranchisereferalincomeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**franchisereferalincome_create_object_v2**](ObjectFranchisereferalincomeApi.md#franchisereferalincome_create_object_v2) | **POST** /2/object/franchisereferalincome | Create a new Franchisereferalincome


# **franchisereferalincome_create_object_v2**
> FranchisereferalincomeCreateObjectV2Response franchisereferalincome_create_object_v2(franchisereferalincome_create_object_v2_request => $franchisereferalincome_create_object_v2_request)

Create a new Franchisereferalincome

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectFranchisereferalincomeApi;
my $api_instance = EzmaxApi::ObjectFranchisereferalincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $franchisereferalincome_create_object_v2_request = EzmaxApi::Object::FranchisereferalincomeCreateObjectV2Request->new(); # FranchisereferalincomeCreateObjectV2Request | 

eval {
    my $result = $api_instance->franchisereferalincome_create_object_v2(franchisereferalincome_create_object_v2_request => $franchisereferalincome_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectFranchisereferalincomeApi->franchisereferalincome_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **franchisereferalincome_create_object_v2_request** | [**FranchisereferalincomeCreateObjectV2Request**](FranchisereferalincomeCreateObjectV2Request.md)|  | 

### Return type

[**FranchisereferalincomeCreateObjectV2Response**](FranchisereferalincomeCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

