# YNAB::TransactionSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date** | **Date** |  | 
**amount** | **Integer** | The transaction amount in milliunits format | 
**memo** | **String** |  | 
**cleared** | **String** | The cleared status of the transaction | 
**approved** | **BOOLEAN** | Whether or not the transaction is approved | 
**flag_color** | **String** | The transaction flag | 
**account_id** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** | If a transfer transaction, the account to which it transfers | 
**transfer_transaction_id** | **String** | If a transfer transaction, the id of transaction on the other side of the transfer | 
**import_id** | **String** | If the Transaction was imported, this field is a unique (by account) import identifier.  If this transaction was imported through File Based Import or Direct Import and not through the API, the import_id will have the format: &#39;YNAB:[milliunit_amount]:[iso_date]:[occurrence]&#39;.  For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of &#39;YNAB:-294230:2015-12-30:1&#39;.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be &#39;YNAB:-294230:2015-12-30:2&#39;. | 
**deleted** | **BOOLEAN** | Whether or not the transaction has been deleted.  Deleted transactions will only be included in delta requests. | 


