# GooglePay

## Overview

### Available Operations

* [link_token](#link_token) - Connect a Google Pay token to the specified account.

The `paymentMethodData` field should contain the `paymentMethodData` property from Google Pay's
[PaymentData](https://developers.google.com/pay/api/web/reference/response-objects#PaymentData) response,
passed through unmodified.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/cards.write` scope.

## link_token

Connect a Google Pay token to the specified account.

The `paymentMethodData` field should contain the `paymentMethodData` property from Google Pay's
[PaymentData](https://developers.google.com/pay/api/web/reference/response-objects#PaymentData) response,
passed through unmodified.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/cards.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="linkGooglePayToken" method="post" path="/accounts/{accountID}/google-pay/tokens" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.google_pay.link_token(account_id: '<id>', link_google_pay: Models::Components::LinkGooglePay.new(
  merchant_account_id: 'c5f78a7e-2fb0-4e4a-bcf0-9e1f8b0e5c7a',
  payment_method_data: Models::Components::GooglePayPaymentMethodData.new(
    type: Models::Components::GooglePayPaymentMethodDataType::CARD,
    info: Models::Components::GooglePayCardInfo.new(
      card_network: Models::Components::CardNetwork::VISA,
      card_details: '1234',
      card_funding_source: Models::Components::CardFundingSource::DEBIT,
      billing_address: Models::Components::GooglePayBillingAddress.new(
        country_code: 'US'
      )
    ),
    tokenization_data: Models::Components::GooglePayTokenizationData.new(
      type: Models::Components::GooglePayTokenizationDataType::PAYMENT_GATEWAY,
      token: '<value>'
    )
  )
))

unless res.linked_google_pay_payment_methods.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `account_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Moov account representing the cardholder.                       |
| `link_google_pay`                                                         | [Models::Components::LinkGooglePay](../../models/shared/linkgooglepay.md) | :heavy_check_mark:                                                        | N/A                                                                       |

### Response

**[T.nilable(Models::Operations::LinkGooglePayTokenResponse)](../../models/operations/linkgooglepaytokenresponse.md)**

### Errors

| Error Type                         | Status Code                        | Content Type                       |
| ---------------------------------- | ---------------------------------- | ---------------------------------- |
| Models::Errors::GenericError       | 400, 409                           | application/json                   |
| Models::Errors::LinkGooglePayError | 422                                | application/json                   |
| Errors::APIError                   | 4XX, 5XX                           | \*/\*                              |