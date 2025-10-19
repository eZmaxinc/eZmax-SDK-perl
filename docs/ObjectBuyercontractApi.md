# EzmaxApi::ObjectBuyercontractApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectBuyercontractApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buyercontract_get_communication_count_v1**](ObjectBuyercontractApi.md#buyercontract_get_communication_count_v1) | **GET** /1/object/buyercontract/{pkiBuyercontractID}/getCommunicationCount | Retrieve Communication count
[**buyercontract_get_communication_list_v1**](ObjectBuyercontractApi.md#buyercontract_get_communication_list_v1) | **GET** /1/object/buyercontract/{pkiBuyercontractID}/getCommunicationList | Retrieve Communication list
[**buyercontract_get_communicationrecipients_v1**](ObjectBuyercontractApi.md#buyercontract_get_communicationrecipients_v1) | **GET** /1/object/buyercontract/{pkiBuyercontractID}/getCommunicationrecipients | Retrieve Buyercontract&#39;s Communicationrecipient
[**buyercontract_get_communicationsenders_v1**](ObjectBuyercontractApi.md#buyercontract_get_communicationsenders_v1) | **GET** /1/object/buyercontract/{pkiBuyercontractID}/getCommunicationsenders | Retrieve Buyercontract&#39;s Communicationsender
[**buyercontract_get_list_v1**](ObjectBuyercontractApi.md#buyercontract_get_list_v1) | **GET** /1/object/buyercontract/getList | Retrieve Buyercontract list
[**buyercontract_import_into_edmv1**](ObjectBuyercontractApi.md#buyercontract_import_into_edmv1) | **POST** /1/object/buyercontract/{pkiBuyercontractID}/importIntoEDM | Import attachments into the Buyercontract


# **buyercontract_get_communication_count_v1**
> BuyercontractGetCommunicationCountV1Response buyercontract_get_communication_count_v1(pki_buyercontract_id => $pki_buyercontract_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_buyercontract_id = 56; # int | 

eval {
    my $result = $api_instance->buyercontract_get_communication_count_v1(pki_buyercontract_id => $pki_buyercontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_buyercontract_id** | **int**|  | 

### Return type

[**BuyercontractGetCommunicationCountV1Response**](BuyercontractGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buyercontract_get_communication_list_v1**
> BuyercontractGetCommunicationListV1Response buyercontract_get_communication_list_v1(pki_buyercontract_id => $pki_buyercontract_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_buyercontract_id = 56; # int | 

eval {
    my $result = $api_instance->buyercontract_get_communication_list_v1(pki_buyercontract_id => $pki_buyercontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_buyercontract_id** | **int**|  | 

### Return type

[**BuyercontractGetCommunicationListV1Response**](BuyercontractGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buyercontract_get_communicationrecipients_v1**
> BuyercontractGetCommunicationrecipientsV1Response buyercontract_get_communicationrecipients_v1(pki_buyercontract_id => $pki_buyercontract_id)

Retrieve Buyercontract's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_buyercontract_id = 56; # int | 

eval {
    my $result = $api_instance->buyercontract_get_communicationrecipients_v1(pki_buyercontract_id => $pki_buyercontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_buyercontract_id** | **int**|  | 

### Return type

[**BuyercontractGetCommunicationrecipientsV1Response**](BuyercontractGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buyercontract_get_communicationsenders_v1**
> BuyercontractGetCommunicationsendersV1Response buyercontract_get_communicationsenders_v1(pki_buyercontract_id => $pki_buyercontract_id)

Retrieve Buyercontract's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_buyercontract_id = 56; # int | 

eval {
    my $result = $api_instance->buyercontract_get_communicationsenders_v1(pki_buyercontract_id => $pki_buyercontract_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_buyercontract_id** | **int**|  | 

### Return type

[**BuyercontractGetCommunicationsendersV1Response**](BuyercontractGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buyercontract_get_list_v1**
> BuyercontractGetListV1Response buyercontract_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Buyercontract list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eBuyercontractStep | Imported<br>Active<br>Modified<br>ContractEnded<br>ExpiredContract<br>Bought | | eBuyercontractType | Rent<br>Sale<br>RentOrSale |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

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
    my $result = $api_instance->buyercontract_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_get_list_v1: $@\n";
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

[**BuyercontractGetListV1Response**](BuyercontractGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buyercontract_import_into_edmv1**
> BuyercontractImportIntoEDMV1Response buyercontract_import_into_edmv1(pki_buyercontract_id => $pki_buyercontract_id, buyercontract_import_into_edmv1_request => $buyercontract_import_into_edmv1_request)

Import attachments into the Buyercontract



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBuyercontractApi;
my $api_instance = EzmaxApi::ObjectBuyercontractApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_buyercontract_id = 56; # int | 
my $buyercontract_import_into_edmv1_request = EzmaxApi::Object::BuyercontractImportIntoEDMV1Request->new(); # BuyercontractImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->buyercontract_import_into_edmv1(pki_buyercontract_id => $pki_buyercontract_id, buyercontract_import_into_edmv1_request => $buyercontract_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBuyercontractApi->buyercontract_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_buyercontract_id** | **int**|  | 
 **buyercontract_import_into_edmv1_request** | [**BuyercontractImportIntoEDMV1Request**](BuyercontractImportIntoEDMV1Request.md)|  | 

### Return type

[**BuyercontractImportIntoEDMV1Response**](BuyercontractImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

