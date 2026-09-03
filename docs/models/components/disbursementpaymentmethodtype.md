# DisbursementPaymentMethodType

Payment methods allowed for disbursing funds.

## Example Usage

```ruby
require "moov_ruby"

value = DisbursementPaymentMethodType::PUSH_TO_CARD

# Open enum: use .deserialize() to create instances from custom string values
custom = DisbursementPaymentMethodType.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `PUSH_TO_CARD`        | push-to-card          |
| `RTP_CREDIT`          | rtp-credit            |
| `ACH_CREDIT_SAME_DAY` | ach-credit-same-day   |
| `ACH_CREDIT_STANDARD` | ach-credit-standard   |
| `PUSH_TO_APPLE_PAY`   | push-to-apple-pay     |
| `PUSH_TO_GOOGLE_PAY`  | push-to-google-pay    |