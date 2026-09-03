# RefundCardStatus

## Example Usage

```ruby
require "moov_ruby"

value = RefundCardStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = RefundCardStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `CONFIRMED` | confirmed   |
| `SETTLED`   | settled     |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |