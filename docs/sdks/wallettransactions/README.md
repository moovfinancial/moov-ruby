# WalletTransactions

## Overview

### Available Operations

* [list](#list) - List all the transactions associated with a particular Moov wallet. 

Read our [wallet transactions guide](https://docs.moov.io/guides/sources/wallets/transactions/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.
* [get](#get) - Get details on a specific wallet transaction. 

Read our [wallet transactions guide](https://docs.moov.io/guides/sources/wallets/transactions/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

## list

List all the transactions associated with a particular Moov wallet. 

Read our [wallet transactions guide](https://docs.moov.io/guides/sources/wallets/transactions/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listWalletTransactions" method="get" path="/accounts/{accountID}/wallets/{walletID}/transactions" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  x_moov_version: 'v2024.01.00'
)

req = Models::Operations::ListWalletTransactionsRequest.new(
  account_id: '69e4529b-baf0-4f00-877b-123cfd9d6116',
  skip: 60,
  count: 20,
  wallet_id: '4f971587-62fe-42c9-bc61-7409d9c8660c'
)
res = s.wallet_transactions.list(request: req)

unless res.wallet_transactions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListWalletTransactionsRequest](../../models/operations/listwallettransactionsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListWalletTransactionsResponse)](../../models/operations/listwallettransactionsresponse.md)**

### Errors

| Error Type                                            | Status Code                                           | Content Type                                          |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| Models::Errors::ListWalletTransactionsValidationError | 422                                                   | application/json                                      |
| Errors::APIError                                      | 4XX, 5XX                                              | \*/\*                                                 |

## get

Get details on a specific wallet transaction. 

Read our [wallet transactions guide](https://docs.moov.io/guides/sources/wallets/transactions/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWalletTransaction" method="get" path="/accounts/{accountID}/wallets/{walletID}/transactions/{transactionID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  x_moov_version: 'v2024.01.00'
)
res = s.wallet_transactions.get(account_id: 'f0b02d73-10dc-42e6-8030-fd78fcbc114f', wallet_id: '03db97f6-c308-4595-8f43-fd247f1bd3f2', transaction_id: 'e0a32cf5-5758-49ba-83da-75bf02c9c6d7')

unless res.wallet_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `wallet_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `transaction_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `dev` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::GetWalletTransactionResponse)](../../models/operations/getwallettransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |