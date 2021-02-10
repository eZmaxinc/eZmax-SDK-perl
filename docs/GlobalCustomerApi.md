# EzmaxApi::GlobalCustomerApi

## Load the API package
```perl
use EzmaxApi::Object::GlobalCustomerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**global_customer_get_endpoint_v1**](GlobalCustomerApi.md#global_customer_get_endpoint_v1) | **GET** /1/customer/{pksCustomerCode}/endpoint | Get customer endpoint


# **global_customer_get_endpoint_v1**
> GlobalCustomerGetEndpointV1Response global_customer_get_endpoint_v1(pks_customer_code => $pks_customer_code, s_infrastructureproduct_code => $s_infrastructureproduct_code)

Get customer endpoint

Retrieve the customer's specific server endpoint where to send requests. This will help locate the proper region (ie: sInfrastructureregionCode) and the proper environment (ie: sInfrastructureenvironmenttypeDescription) where the customer's data is stored.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::GlobalCustomerApi;
my $api_instance = EzmaxApi::GlobalCustomerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pks_customer_code = "pks_customer_code_example"; # string | The customer code assigned to your account
my $s_infrastructureproduct_code = "s_infrastructureproduct_code_example"; # string | The infrastructure product Code  If undefined, \"appcluster01\" is assumed

eval { 
    my $result = $api_instance->global_customer_get_endpoint_v1(pks_customer_code => $pks_customer_code, s_infrastructureproduct_code => $s_infrastructureproduct_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalCustomerApi->global_customer_get_endpoint_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pks_customer_code** | **string**| The customer code assigned to your account | 
 **s_infrastructureproduct_code** | **string**| The infrastructure product Code  If undefined, \&quot;appcluster01\&quot; is assumed | [optional] 

### Return type

[**GlobalCustomerGetEndpointV1Response**](GlobalCustomerGetEndpointV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

