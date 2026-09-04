# CardPaymentTransactionStatus

Status of a card payment transaction.

## Example Usage

```ruby
require "moov_ruby"

value = CardPaymentTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = CardPaymentTransactionStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `CONFIRMED` | confirmed   |
| `CANCELED`  | canceled    |
| `SETTLED`   | settled     |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |