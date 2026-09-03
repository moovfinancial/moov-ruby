# TransferFailureReason

Reason for a transfer's failure.

## Example Usage

```ruby
require "moov_ruby"

value = TransferFailureReason::SOURCE_PAYMENT_ERROR

# Open enum: use .deserialize() to create instances from custom string values
custom = TransferFailureReason.deserialize("custom_value")
```


## Values

| Name                        | Value                       |
| --------------------------- | --------------------------- |
| `SOURCE_PAYMENT_ERROR`      | source-payment-error        |
| `DESTINATION_PAYMENT_ERROR` | destination-payment-error   |
| `WALLET_INSUFFICIENT_FUNDS` | wallet-insufficient-funds   |
| `REJECTED_HIGH_RISK`        | rejected-high-risk          |
| `PROCESSING_ERROR`          | processing-error            |