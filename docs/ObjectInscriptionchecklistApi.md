# EzmaxApi::ObjectInscriptionchecklistApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptionchecklistApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscriptionchecklist_get_autocomplete_v3**](ObjectInscriptionchecklistApi.md#inscriptionchecklist_get_autocomplete_v3) | **GET** /3/object/inscriptionchecklist/getAutocomplete/{sSelector} | Retrieve Inscriptionchecklists and IDs


# **inscriptionchecklist_get_autocomplete_v3**
> InscriptionchecklistGetAutocompleteV3Response inscriptionchecklist_get_autocomplete_v3(s_selector => $s_selector, fki_buyercontract_id => $fki_buyercontract_id, fki_inscription_id => $fki_inscription_id, fki_inscriptionnotauthenticated_id => $fki_inscriptionnotauthenticated_id, fki_inscriptiontemp_id => $fki_inscriptiontemp_id, fki_agent_id => $fki_agent_id, fki_broker_id => $fki_broker_id, fki_otherincome_id => $fki_otherincome_id, fki_rejectedoffertopurchase_id => $fki_rejectedoffertopurchase_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Inscriptionchecklists and IDs

Get the list of Inscriptionchecklist to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionchecklistApi;
my $api_instance = EzmaxApi::ObjectInscriptionchecklistApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Inscriptionchecklist to return
my $fki_buyercontract_id = "fki_buyercontract_id_example"; # string | Specify which Buyercontract we want to display.
my $fki_inscription_id = "fki_inscription_id_example"; # string | Specify which Inscription we want to display.
my $fki_inscriptionnotauthenticated_id = "fki_inscriptionnotauthenticated_id_example"; # string | Specify which Inscriptionnotauthenticated we want to display.
my $fki_inscriptiontemp_id = "fki_inscriptiontemp_id_example"; # string | Specify which Inscriptiontemp we want to display.
my $fki_agent_id = "fki_agent_id_example"; # string | Specify which Agent we want to display.
my $fki_broker_id = "fki_broker_id_example"; # string | Specify which Broker we want to display.
my $fki_otherincome_id = "fki_otherincome_id_example"; # string | Specify which Otherincome we want to display.
my $fki_rejectedoffertopurchase_id = "fki_rejectedoffertopurchase_id_example"; # string | Specify which Rejectedoffertopurchase we want to display.
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->inscriptionchecklist_get_autocomplete_v3(s_selector => $s_selector, fki_buyercontract_id => $fki_buyercontract_id, fki_inscription_id => $fki_inscription_id, fki_inscriptionnotauthenticated_id => $fki_inscriptionnotauthenticated_id, fki_inscriptiontemp_id => $fki_inscriptiontemp_id, fki_agent_id => $fki_agent_id, fki_broker_id => $fki_broker_id, fki_otherincome_id => $fki_otherincome_id, fki_rejectedoffertopurchase_id => $fki_rejectedoffertopurchase_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionchecklistApi->inscriptionchecklist_get_autocomplete_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Inscriptionchecklist to return | 
 **fki_buyercontract_id** | **string**| Specify which Buyercontract we want to display. | [optional] 
 **fki_inscription_id** | **string**| Specify which Inscription we want to display. | [optional] 
 **fki_inscriptionnotauthenticated_id** | **string**| Specify which Inscriptionnotauthenticated we want to display. | [optional] 
 **fki_inscriptiontemp_id** | **string**| Specify which Inscriptiontemp we want to display. | [optional] 
 **fki_agent_id** | **string**| Specify which Agent we want to display. | [optional] 
 **fki_broker_id** | **string**| Specify which Broker we want to display. | [optional] 
 **fki_otherincome_id** | **string**| Specify which Otherincome we want to display. | [optional] 
 **fki_rejectedoffertopurchase_id** | **string**| Specify which Rejectedoffertopurchase we want to display. | [optional] 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**InscriptionchecklistGetAutocompleteV3Response**](InscriptionchecklistGetAutocompleteV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

