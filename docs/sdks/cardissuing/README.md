# CardIssuing

## Overview

### Available Operations

* [list_merchant_categories](#list_merchant_categories) - List the predefined merchant category groups available for issued card spend controls, along with
the merchant category codes (MCCs) each group covers. Use these category names in an issued card's
`merchantCategoryRestrictions`.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/),
you'll need to specify the `/issued-cards.read` scope.
* [create_authorization](#create_authorization) - Create a simulated authorization for an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.
* [create_clearing](#create_clearing) - Create a simulated clearing for an authorization on an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.
* [create_reversal](#create_reversal) - Create a simulated reversal for an authorization on an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.
* [request](#request) - Request a virtual card be issued.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.
* [list](#list) - List Moov issued cards existing for the account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read` scope.
* [get](#get) - Retrieve a single issued card associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read` scope.
* [update](#update) - Update a Moov issued card.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.
* [get_full](#get_full) - Get issued card with PAN, CVV, and expiration. 

Only use this endpoint if you have provided Moov with a copy of your PCI attestation of compliance.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read-private` scope.

## list_merchant_categories

List the predefined merchant category groups available for issued card spend controls, along with
the merchant category codes (MCCs) each group covers. Use these category names in an issued card's
`merchantCategoryRestrictions`.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/),
you'll need to specify the `/issued-cards.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listIssuingMerchantCategories" method="get" path="/issuing/merchant-categories" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.list_merchant_categories

unless res.merchant_categories.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListIssuingMerchantCategoriesResponse)](../../models/operations/listissuingmerchantcategoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_authorization

Create a simulated authorization for an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAuthorizationSimulation" method="post" path="/issuing/simulations/{accountID}/authorizations" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.create_authorization(account_id: '<id>', create_authorization_simulation: Models::Components::CreateAuthorizationSimulation.new(
  issued_card_id: '<id>',
  amount: '-14.89',
  merchant_data: Models::Components::IssuingMerchantData.new(
    network_id: '<id>',
    name: 'Whole Body Fitness',
    city: 'San Francisco',
    country: 'US',
    postal_code: '94107',
    state: 'CA',
    mcc: '7298'
  )
))

unless res.issued_card_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                              | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The Moov business account for which the card was issued.                                                  |
| `create_authorization_simulation`                                                                         | [Models::Components::CreateAuthorizationSimulation](../../models/shared/createauthorizationsimulation.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |

### Response

**[T.nilable(Models::Operations::CreateAuthorizationSimulationResponse)](../../models/operations/createauthorizationsimulationresponse.md)**

### Errors

| Error Type                                             | Status Code                                            | Content Type                                           |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| Models::Errors::GenericError                           | 400, 409                                               | application/json                                       |
| Models::Errors::AuthorizationSimulationValidationError | 422                                                    | application/json                                       |
| Errors::APIError                                       | 4XX, 5XX                                               | \*/\*                                                  |

## create_clearing

Create a simulated clearing for an authorization on an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createClearingSimulation" method="post" path="/issuing/simulations/{accountID}/authorizations/{authorizationID}/clearings" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.create_clearing(account_id: '<id>', authorization_id: '<id>', create_clearing_simulation: Models::Components::CreateClearingSimulation.new(
  amount: '-14.89'
))

unless res.issued_card_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `account_id`                                                                                    | *::String*                                                                                      | :heavy_check_mark:                                                                              | The Moov business account for which the card was issued.                                        |
| `authorization_id`                                                                              | *::String*                                                                                      | :heavy_check_mark:                                                                              | The ID of the authorization to clear.                                                           |
| `create_clearing_simulation`                                                                    | [Models::Components::CreateClearingSimulation](../../models/shared/createclearingsimulation.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |

### Response

**[T.nilable(Models::Operations::CreateClearingSimulationResponse)](../../models/operations/createclearingsimulationresponse.md)**

### Errors

| Error Type                                        | Status Code                                       | Content Type                                      |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| Models::Errors::GenericError                      | 400, 409                                          | application/json                                  |
| Models::Errors::ClearingSimulationValidationError | 422                                               | application/json                                  |
| Errors::APIError                                  | 4XX, 5XX                                          | \*/\*                                             |

## create_reversal

Create a simulated reversal for an authorization on an issued card in test mode. See our [test mode](https://docs.moov.io/guides/get-started/test-mode)
guide for more information.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createReversalSimulation" method="post" path="/issuing/simulations/{accountID}/authorizations/{authorizationID}/reversals" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.create_reversal(account_id: '<id>', authorization_id: '<id>')

unless res.issued_card_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `account_id`                                             | *::String*                                               | :heavy_check_mark:                                       | The Moov business account for which the card was issued. |
| `authorization_id`                                       | *::String*                                               | :heavy_check_mark:                                       | The ID of the authorization to reverse.                  |

### Response

**[T.nilable(Models::Operations::CreateReversalSimulationResponse)](../../models/operations/createreversalsimulationresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## request

Request a virtual card be issued.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="requestCard" method="post" path="/issuing/{accountID}/cards" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.request(account_id: '4d9ac71a-efcc-4bdf-bcfe-d710ca654e3e', request_card: Models::Components::RequestCard.new(
  metadata: {
    'optional' => 'metadata',
  },
  billing_address: Models::Components::Address.new(
    address_line1: '123 Main Street',
    address_line2: 'Apt 302',
    city: 'Boulder',
    state_or_province: 'CO',
    postal_code: '80301',
    country: 'US'
  ),
  expiration: Models::Components::CardExpiration.new(
    month: '01',
    year: '21'
  ),
  controls: Models::Components::IssuingControls.new(
    velocity_limits: [
      Models::Components::IssuingVelocityLimit.new(
        amount: 10_000,
        interval: Models::Components::IssuingIntervalLimit::PER_TRANSACTION
      ),
    ]
  )
))

unless res.issued_card.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `account_id`                                                          | *::String*                                                            | :heavy_check_mark:                                                    | The Moov business account for which the card is to be issued.         |
| `request_card`                                                        | [Models::Components::RequestCard](../../models/shared/requestcard.md) | :heavy_check_mark:                                                    | N/A                                                                   |

### Response

**[T.nilable(Models::Operations::RequestCardResponse)](../../models/operations/requestcardresponse.md)**

### Errors

| Error Type                       | Status Code                      | Content Type                     |
| -------------------------------- | -------------------------------- | -------------------------------- |
| Models::Errors::GenericError     | 400                              | application/json                 |
| Models::Errors::RequestCardError | 422                              | application/json                 |
| Errors::APIError                 | 4XX, 5XX                         | \*/\*                            |

## list

List Moov issued cards existing for the account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listIssuedCards" method="get" path="/issuing/{accountID}/cards" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.list(account_id: '17c958e0-3abe-46e5-8afb-98742f1fb8ac', skip: 60, count: 20)

unless res.issued_cards.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 | Example                                                                                                     |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The Moov business account for which the cards have been issued.                                             |                                                                                                             |
| `skip`                                                                                                      | *T.nilable(::Integer)*                                                                                      | :heavy_minus_sign:                                                                                          | N/A                                                                                                         | 60                                                                                                          |
| `count`                                                                                                     | *T.nilable(::Integer)*                                                                                      | :heavy_minus_sign:                                                                                          | Page size. When omitted, the server defaults to `200`.                                                      | 20                                                                                                          |
| `states`                                                                                                    | T::Array<[Models::Components::IssuedCardState](../../models/shared/issuedcardstate.md)>                     | :heavy_minus_sign:                                                                                          | Optional, comma-separated states to filter the Moov list issued cards response. For example `active,closed` |                                                                                                             |

### Response

**[T.nilable(Models::Operations::ListIssuedCardsResponse)](../../models/operations/listissuedcardsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Retrieve a single issued card associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getIssuedCard" method="get" path="/issuing/{accountID}/cards/{issuedCardID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.get(account_id: '4fde8da4-b6c5-4379-82a2-4ff6a742e41a', issued_card_id: 'd04885c9-ea6b-43a7-9186-63d9fbd57716')

unless res.issued_card.nil?
  # handle response
end

```

### Parameters

| Parameter                                                | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `account_id`                                             | *::String*                                               | :heavy_check_mark:                                       | The Moov business account for which the card was issued. |
| `issued_card_id`                                         | *::String*                                               | :heavy_check_mark:                                       | N/A                                                      |

### Response

**[T.nilable(Models::Operations::GetIssuedCardResponse)](../../models/operations/getissuedcardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update a Moov issued card.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/issued-cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateIssuedCard" method="patch" path="/issuing/{accountID}/cards/{issuedCardID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.update(account_id: '44db31bc-2813-424b-9b8c-2d3f5f1300e3', issued_card_id: '69ca2a7e-7bbc-4176-9d0c-2a1aa7143006', update_issued_card: Models::Components::UpdateIssuedCard.new(
  metadata: {
    'optional' => 'metadata',
  },
  billing_address: Models::Components::BillingAddress.new(
    address_line1: '123 Main Street',
    address_line2: 'Apt 302',
    city: 'Boulder',
    state_or_province: 'CO',
    postal_code: '80301',
    country: 'US'
  ),
  controls: Models::Components::UpdateIssuingControls.new(
    velocity_limits: [
      Models::Components::IssuingVelocityLimit.new(
        amount: 10_000,
        interval: Models::Components::IssuingIntervalLimit::DAILY
      ),
    ]
  )
))

unless res.issued_card.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `account_id`                                                                    | *::String*                                                                      | :heavy_check_mark:                                                              | The Moov business account for which the card was issued.                        |
| `issued_card_id`                                                                | *::String*                                                                      | :heavy_check_mark:                                                              | N/A                                                                             |
| `update_issued_card`                                                            | [Models::Components::UpdateIssuedCard](../../models/shared/updateissuedcard.md) | :heavy_check_mark:                                                              | N/A                                                                             |

### Response

**[T.nilable(Models::Operations::UpdateIssuedCardResponse)](../../models/operations/updateissuedcardresponse.md)**

### Errors

| Error Type                            | Status Code                           | Content Type                          |
| ------------------------------------- | ------------------------------------- | ------------------------------------- |
| Models::Errors::GenericError          | 400, 409                              | application/json                      |
| Models::Errors::UpdateIssuedCardError | 422                                   | application/json                      |
| Errors::APIError                      | 4XX, 5XX                              | \*/\*                                 |

## get_full

Get issued card with PAN, CVV, and expiration. 

Only use this endpoint if you have provided Moov with a copy of your PCI attestation of compliance.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/issued-cards.read-private` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFullIssuedCard" method="get" path="/issuing/{accountID}/cards/{issuedCardID}/details" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.card_issuing.get_full(account_id: '512052fb-5e2c-4d24-98dd-fa893c9d8a03', issued_card_id: '087ecc51-11fe-4471-a3bb-44f20c1e87a9')

unless res.full_issued_card.nil?
  # handle response
end

```

### Parameters

| Parameter                                                | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `account_id`                                             | *::String*                                               | :heavy_check_mark:                                       | The Moov business account for which the card was issued. |
| `issued_card_id`                                         | *::String*                                               | :heavy_check_mark:                                       | N/A                                                      |

### Response

**[T.nilable(Models::Operations::GetFullIssuedCardResponse)](../../models/operations/getfullissuedcardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |