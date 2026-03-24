# Statements

## Overview

### Available Operations

* [list](#list) - Retrieve all statements associated with an account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [get](#get) - Retrieve a statement by its ID.

Use the `Accept` header to specify the format of the response. Supported formats are `application/json` and `application/pdf`.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

## list

Retrieve all statements associated with an account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listStatements" method="get" path="/accounts/{accountID}/statements" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Operations::ListStatementsRequest.new(
  skip: 60,
  count: 20,
  account_id: 'b63ef5ea-db36-47f1-a72e-1a5eb1c43c0f'
)
res = s.statements.list(request: req)

unless res.statements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListStatementsRequest](../../models/operations/liststatementsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListStatementsResponse)](../../models/operations/liststatementsresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400                          | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## get

Retrieve a statement by its ID.

Use the `Accept` header to specify the format of the response. Supported formats are `application/json` and `application/pdf`.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getStatement" method="get" path="/accounts/{accountID}/statements/{statementID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.statements.get(account_id: '5623ff52-0b05-41ea-b7b3-655835064007', statement_id: '9d45acbf-c4fe-4843-846c-eaa43c9ca17f')

unless res.statement.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |
| `statement_id`     | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetStatementResponse)](../../models/operations/getstatementresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |