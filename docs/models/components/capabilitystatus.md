# CapabilityStatus

The status of the capability requested for an account.

## Example Usage

```ruby
require "moov_ruby"

value = CapabilityStatus::ENABLED

# Open enum: use .deserialize() to create instances from custom string values
custom = CapabilityStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `ENABLED`   | enabled     |
| `DISABLED`  | disabled    |
| `PENDING`   | pending     |
| `IN_REVIEW` | in-review   |