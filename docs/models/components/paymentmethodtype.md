# PaymentMethodType

The payment method type that represents a payment rail and directionality

## Example Usage

```ruby
require "moov_ruby"

value = PaymentMethodType::MOOV_WALLET
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `MOOV_WALLET`          | moov-wallet            |
| `ACH_DEBIT_FUND`       | ach-debit-fund         |
| `ACH_DEBIT_COLLECT`    | ach-debit-collect      |
| `ACH_CREDIT_STANDARD`  | ach-credit-standard    |
| `ACH_CREDIT_SAME_DAY`  | ach-credit-same-day    |
| `RTP_CREDIT`           | rtp-credit             |
| `CARD_PAYMENT`         | card-payment           |
| `PUSH_TO_CARD`         | push-to-card           |
| `PULL_FROM_CARD`       | pull-from-card         |
| `APPLE_PAY`            | apple-pay              |
| `CARD_PRESENT_PAYMENT` | card-present-payment   |
| `INSTANT_BANK_CREDIT`  | instant-bank-credit    |
| `PUSH_TO_APPLE_PAY`    | push-to-apple-pay      |
| `PULL_FROM_APPLE_PAY`  | pull-from-apple-pay    |
| `GOOGLE_PAY`           | google-pay             |
| `PUSH_TO_GOOGLE_PAY`   | push-to-google-pay     |
| `PULL_FROM_GOOGLE_PAY` | pull-from-google-pay   |