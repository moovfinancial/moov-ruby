# FeeCategory

## Example Usage

```ruby
require "moov_ruby"

value = FeeCategory::ACH

# Open enum: use .deserialize() to create instances from custom string values
custom = FeeCategory.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `ACH`                 | ach                   |
| `CARD_ACQUIRING`      | card-acquiring        |
| `CARD_OTHER`          | card-other            |
| `CARD_PULL`           | card-pull             |
| `CARD_PUSH`           | card-push             |
| `INSTANT_BANK`        | instant-bank          |
| `MONTHLY_PLATFORM`    | monthly-platform      |
| `NETWORK_PASSTHROUGH` | network-passthrough   |
| `OTHER`               | other                 |
| `RTP`                 | rtp                   |