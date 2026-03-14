# Institutions

## Overview

### Available Operations

* [search_institutions](#search_institutions) - Search for financial institutions by name or routing number.

This endpoint returns metadata about each matched institution, including basic identifying details (such as name, routing number, and address) and information about which payment services they support (e.g., ACH, RTP, and Wire).

This can be used to validate a financial institution before initiating payment activity, or to check which payment rails are available for a given routing number.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/institutions.read` scope.
* [~~search~~](#search) - This endpoint has been deprecated and will be removed in a future release. Use [/institutions](https://docs.moov.io/api/enrichment/form-shortening/institutions/get/).

Search for institutions by either their name or routing number.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/fed.read` scope. :warning: **Deprecated**

## search_institutions

Search for financial institutions by name or routing number.

This endpoint returns metadata about each matched institution, including basic identifying details (such as name, routing number, and address) and information about which payment services they support (e.g., ACH, RTP, and Wire).

This can be used to validate a financial institution before initiating payment activity, or to check which payment rails are available for a given routing number.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/institutions.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="searchInstitutions" method="get" path="/institutions" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.institutions.search_institutions

unless res.institutions_search_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `name`                                                                                    | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | Name of the financial institution. Either `name` or `routingNumber` is required.          |
| `routing_number`                                                                          | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | Routing number for a financial institution. Either `routingNumber` or `name` is required. |
| `limit`                                                                                   | *T.nilable(::Integer)*                                                                    | :heavy_minus_sign:                                                                        | Maximum results returned by a search.                                                     |

### Response

**[T.nilable(Models::Operations::SearchInstitutionsResponse)](../../models/operations/searchinstitutionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~search~~

This endpoint has been deprecated and will be removed in a future release. Use [/institutions](https://docs.moov.io/api/enrichment/form-shortening/institutions/get/).

Search for institutions by either their name or routing number.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/fed.read` scope.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listInstitutions" method="get" path="/institutions/ach/search" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.institutions.search

unless res.financial_institutions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `name`                                                                                    | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | Name of the financial institution. Either `name` or `routingNumber` is required.          |
| `routing_number`                                                                          | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | Routing number for a financial institution. Either `routingNumber` or `name` is required. |
| `state`                                                                                   | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | The state where a financial institution is based.                                         |
| `limit`                                                                                   | *T.nilable(::Integer)*                                                                    | :heavy_minus_sign:                                                                        | Maximum results returned by a search.                                                     |

### Response

**[T.nilable(Models::Operations::ListInstitutionsResponse)](../../models/operations/listinstitutionsresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400                          | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |