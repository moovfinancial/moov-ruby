# PushDeliverySpeed

Delivery speed options for push-to-card payouts.

## Example Usage

```ruby
require "moov_ruby"

value = PushDeliverySpeed::INSTANT

# Open enum: use .deserialize() to create instances from custom string values
custom = PushDeliverySpeed.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `INSTANT`  | instant    |
| `DEFERRED` | deferred   |