# SweepStatus

## Example Usage

```ruby
require "moov_ruby"

value = SweepStatus::ACCRUING

# Open enum: use .deserialize() to create instances from custom string values
custom = SweepStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `ACCRUING`        | accruing          |
| `ACTION_REQUIRED` | action-required   |
| `CANCELED`        | canceled          |
| `CLOSED`          | closed            |
| `FAILED`          | failed            |
| `PAID`            | paid              |