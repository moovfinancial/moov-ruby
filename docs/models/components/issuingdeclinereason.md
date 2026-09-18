# IssuingDeclineReason

The reason an authorization or authorization event was declined. Only present if the
authorization or event has been declined.

## Example Usage

```ruby
require "moov_ruby"

value = IssuingDeclineReason::INSUFFICIENT_FUNDS

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuingDeclineReason.deserialize("custom_value")
```


## Values

| Name                              | Value                             |
| --------------------------------- | --------------------------------- |
| `INSUFFICIENT_FUNDS`              | insufficient-funds                |
| `CARD_NOT_ACTIVE`                 | card-not-active                   |
| `CARD_EXPIRATION`                 | card-expiration                   |
| `SPEND_CUTOFF_REACHED`            | spend-cutoff-reached              |
| `OUTSIDE_ALLOWED_SCHEDULE`        | outside-allowed-schedule          |
| `SPEND_LIMIT_EXCEEDED`            | spend-limit-exceeded              |
| `MERCHANT_CATEGORY_NOT_SUPPORTED` | merchant-category-not-supported   |
| `MERCHANT_CATEGORY_RESTRICTED`    | merchant-category-restricted      |
| `MERCHANT_RESTRICTED`             | merchant-restricted               |
| `MERCHANT_COUNTRY_NOT_SUPPORTED`  | merchant-country-not-supported    |
| `UNSUPPORTED_TRANSACTION`         | unsupported-transaction           |
| `NETWORK_STAND_IN`                | network-stand-in                  |
| `DECLINED_BY_ISSUER`              | declined-by-issuer                |
| `INVALID_REQUEST`                 | invalid-request                   |
| `SYSTEM_ERROR`                    | system-error                      |