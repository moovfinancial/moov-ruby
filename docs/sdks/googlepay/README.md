# GooglePay

## Overview

### Available Operations

* [link_token](#link_token) - Connect a Google Pay token to the specified account.

The `token` data is defined by Google Pay and should be passed through from Google Pay's response unmodified.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/cards.write` scope.

## link_token

Connect a Google Pay token to the specified account.

The `token` data is defined by Google Pay and should be passed through from Google Pay's response unmodified.

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
  token: Models::Components::GooglePayToken.new(
    protocol_version: 'ECv2',
    signature: '<value>',
    intermediate_signing_key: Models::Components::GooglePayIntermediateSigningKey.new(
      signed_key: '<value>',
      signatures: [
        '<value 1>',
        '<value 2>',
        '<value 3>',
      ]
    ),
    signed_message: '<value>'
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