# InstantBankNetwork

The network that the transaction was processed on.

## Example Usage

```ruby
require "moov_ruby"

value = InstantBankNetwork::FEDNOW

# Open enum: use .deserialize() to create instances from custom string values
custom = InstantBankNetwork.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `FEDNOW` | fednow   |
| `RTP`    | rtp      |