# CancellationStatus

## Example Usage

```ruby
require "moov_ruby"

value = CancellationStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = CancellationStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `COMPLETED` | completed   |
| `FAILED`    | failed      |