# PushToCardTransactionStatus

Status of a push-to-card transaction.

## Example Usage

```ruby
require "moov_ruby"

value = PushToCardTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = PushToCardTransactionStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `DEFERRED`  | deferred    |
| `CANCELED`  | canceled    |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |