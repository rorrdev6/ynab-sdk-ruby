# YnabApi::TransactionDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date** | **Date** |  | 
**amount** | **Float** | The current balance of the account in milliunits format | 
**memo** | **String** |  | 
**cleared** | **String** | The cleared status of the transaction | 
**approved** | **BOOLEAN** | Whether or not the transaction is approved | 
**flag** | **String** | Whether or not the transaction is approved | 
**account_id** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** |  | 
**subtransactions** | [**Array&lt;SubTransaction&gt;**](SubTransaction.md) | If a split transaction, the sub-transactions. | 


