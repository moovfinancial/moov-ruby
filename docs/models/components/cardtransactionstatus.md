# CardTransactionStatus

Status of a transaction within the card payment lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = CardTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = CardTransactionStatus.deserialize("custom_value")
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