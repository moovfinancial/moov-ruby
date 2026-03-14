# Underwriting

## Overview

### Available Operations

* [get](#get) - Retrieve underwriting associated with a given Moov account. 

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [save](#save) - Create or update the account's underwriting.

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.
* [upsert](#upsert) - Create or update the account's underwriting.

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

## get

Retrieve underwriting associated with a given Moov account. 

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnderwriting" method="get" path="/accounts/{accountID}/underwriting" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.underwriting.get(account_id: 'efe07546-f697-4da5-bf73-d9987efd4cdd')

unless res.underwriting.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetUnderwritingResponse)](../../models/operations/getunderwritingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## save

Create or update the account's underwriting.

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="saveUnderwriting" method="post" path="/accounts/{accountID}/underwriting" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.underwriting.save(account_id: 'ffe3ca1b-de3f-4305-8d8c-cfd28f279cad', upsert_underwriting: Models::Components::UpsertUnderwriting.new)

unless res.underwriting.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `account_id`                                                                        | *::String*                                                                          | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `upsert_underwriting`                                                               | [Models::Components::UpsertUnderwriting](../../models/shared/upsertunderwriting.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |

### Response

**[T.nilable(Models::Operations::SaveUnderwritingResponse)](../../models/operations/saveunderwritingresponse.md)**

### Errors

| Error Type                              | Status Code                             | Content Type                            |
| --------------------------------------- | --------------------------------------- | --------------------------------------- |
| Models::Errors::GenericError            | 400, 409                                | application/json                        |
| Models::Errors::UpsertUnderwritingError | 422                                     | application/json                        |
| Errors::APIError                        | 4XX, 5XX                                | \*/\*                                   |

## upsert

Create or update the account's underwriting.

Read our [underwriting guide](https://docs.moov.io/guides/accounts/requirements/underwriting/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="upsertUnderwriting" method="put" path="/accounts/{accountID}/underwriting" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.underwriting.upsert(account_id: '371bf394-45df-4ba8-a615-ad5483b1f963', update_underwriting: Models::Components::UpdateUnderwriting.new(
  average_transaction_size: 622_191,
  max_transaction_size: 123_692,
  average_monthly_transaction_volume: 438_164,
  volume_by_customer_type: Models::Components::VolumeByCustomerType.new(
    business_to_business_percentage: 671_399,
    consumer_to_business_percentage: 482_010
  ),
  card_volume_distribution: Models::Components::CardVolumeDistribution.new(
    ecommerce_percentage: 47_450,
    card_present_percentage: 146_275,
    mail_or_phone_percentage: 309_315,
    debt_repayment_percentage: 990_303
  ),
  fulfillment: Models::Components::FulfillmentDetails.new(
    has_physical_goods: true,
    is_shipping_product: true,
    shipment_duration_days: 388_451,
    return_policy: Models::Components::ReturnPolicyType::OTHER
  )
))

unless res.underwriting.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `account_id`                                                                        | *::String*                                                                          | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `update_underwriting`                                                               | [Models::Components::UpdateUnderwriting](../../models/shared/updateunderwriting.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |

### Response

**[T.nilable(Models::Operations::UpsertUnderwritingResponse)](../../models/operations/upsertunderwritingresponse.md)**

### Errors

| Error Type                              | Status Code                             | Content Type                            |
| --------------------------------------- | --------------------------------------- | --------------------------------------- |
| Models::Errors::GenericError            | 400, 409                                | application/json                        |
| Models::Errors::UpdateUnderwritingError | 422                                     | application/json                        |
| Errors::APIError                        | 4XX, 5XX                                | \*/\*                                   |