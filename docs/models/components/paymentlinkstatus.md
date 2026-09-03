# PaymentLinkStatus

## Example Usage

```ruby
require "moov_ruby"

value = PaymentLinkStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentLinkStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ACTIVE`   | active     |
| `USED`     | used       |
| `DISABLED` | disabled   |
| `EXPIRED`  | expired    |