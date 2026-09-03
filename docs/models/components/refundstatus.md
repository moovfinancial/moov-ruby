# RefundStatus

## Example Usage

```ruby
require "moov_ruby"

value = RefundStatus::CREATED

# Open enum: use .deserialize() to create instances from custom string values
custom = RefundStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CREATED`   | created     |
| `PENDING`   | pending     |
| `COMPLETED` | completed   |
| `FAILED`    | failed      |