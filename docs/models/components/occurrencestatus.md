# OccurrenceStatus

Status of the completed occurrence.

## Example Usage

```ruby
require "moov_ruby"

value = OccurrenceStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = OccurrenceStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |