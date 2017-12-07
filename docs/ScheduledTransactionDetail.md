# YnabApi::ScheduledTransactionDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date** | **Date** |  | 
**frequency** | **String** |  | 
**amount** | **Float** | The current balance of the account in milliunits format | 
**memo** | **String** |  | 
**flag** | **String** |  | 
**account_id** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** | If a transfer, the account_id which the scheduled transaction transfers to | 
**subtransactions** | [**Array&lt;ScheduledSubTransaction&gt;**](ScheduledSubTransaction.md) | If a split scheduled transaction, the sub-transactions. | 


