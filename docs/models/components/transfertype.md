# TransferType

The rail and direction used to move funds for a transfer.

## Example Usage

```ruby
require "moov_ruby"

value = TransferType::CARD_PAYMENT

# Open enum: use .deserialize() to create instances from custom string values
custom = TransferType.deserialize("custom_value")
```


## Values

| Name                      | Value                     |
| ------------------------- | ------------------------- |
| `CARD_PAYMENT`            | card-payment              |
| `PUSH_TO_CARD`            | push-to-card              |
| `PULL_FROM_CARD`          | pull-from-card            |
| `ACH_DEBIT`               | ach-debit                 |
| `ACH_CREDIT`              | ach-credit                |
| `ACH_DEBIT_TO_ACH_CREDIT` | ach-debit-to-ach-credit   |
| `INSTANT_BANK_CREDIT`     | instant-bank-credit       |
| `WALLET`                  | wallet                    |
| `WIRE_CREDIT`             | wire-credit               |