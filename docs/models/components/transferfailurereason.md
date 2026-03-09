# TransferFailureReason

Reason for a transfer's failure.

## Example Usage

```ruby
require "moov_ruby"

value = TransferFailureReason::SOURCE_PAYMENT_ERROR
```


## Values

| Name                        | Value                       |
| --------------------------- | --------------------------- |
| `SOURCE_PAYMENT_ERROR`      | source-payment-error        |
| `DESTINATION_PAYMENT_ERROR` | destination-payment-error   |
| `WALLET_INSUFFICIENT_FUNDS` | wallet-insufficient-funds   |
| `REJECTED_HIGH_RISK`        | rejected-high-risk          |
| `PROCESSING_ERROR`          | processing-error            |