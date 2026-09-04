# WireTransactionStatus

Status of a transaction within the wire lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = WireTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = WireTransactionStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `COMPLETED` | completed   |
| `FAILED`    | failed      |
| `RETURNED`  | returned    |