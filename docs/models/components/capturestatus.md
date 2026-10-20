# CaptureStatus

## Example Usage

```ruby
require "moov_ruby"

value = CaptureStatus::CREATED

# Open enum: use .deserialize() to create instances from custom string values
custom = CaptureStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CREATED`   | created     |
| `PENDING`   | pending     |
| `COMPLETED` | completed   |
| `FAILED`    | failed      |
| `CANCELED`  | canceled    |