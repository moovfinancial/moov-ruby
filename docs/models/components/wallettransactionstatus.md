# WalletTransactionStatus

## Example Usage

```ruby
require "moov_ruby"

value = WalletTransactionStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = WalletTransactionStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `COMPLETED` | completed   |
| `CANCELED`  | canceled    |
| `FAILED`    | failed      |