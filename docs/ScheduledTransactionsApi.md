# YnabApi::ScheduledTransactionsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_scheduled_transaction_by_id**](ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | **GET** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Single scheduled transaction
[**get_scheduled_transactions**](ScheduledTransactionsApi.md#get_scheduled_transactions) | **GET** /budgets/{budget_id}/scheduled_transactions | List scheduled transactions


# **get_scheduled_transaction_by_id**
> ScheduledTransactionResponse get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)

Single scheduled transaction

Returns a single scheduled transaction

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::ScheduledTransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

scheduled_transaction_id = "scheduled_transaction_id_example" # String | The ID of the Scheduled Transaction.


begin
  #Single scheduled transaction
  result = api_instance.get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling ScheduledTransactionsApi->get_scheduled_transaction_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **scheduled_transaction_id** | [**String**](.md)| The ID of the Scheduled Transaction. | 

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scheduled_transactions**
> ScheduledTransactionsResponse get_scheduled_transactions(budget_id)

List scheduled transactions

Returns all scheduled transactions

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::ScheduledTransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.


begin
  #List scheduled transactions
  result = api_instance.get_scheduled_transactions(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling ScheduledTransactionsApi->get_scheduled_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**ScheduledTransactionsResponse**](ScheduledTransactionsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



