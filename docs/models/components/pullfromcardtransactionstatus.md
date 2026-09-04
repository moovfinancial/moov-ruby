# PullFromCardTransactionStatus

Status of a pull-from-card transaction.

## Example Usage

```ruby
require "moov_ruby"

value = PullFromCardTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = PullFromCardTransactionStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |