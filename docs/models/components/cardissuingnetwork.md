# CardIssuingNetwork

The name of the network a card transaction is routed through.

## Example Usage

```ruby
require "moov_ruby"

value = CardIssuingNetwork::DISCOVER

# Open enum: use .deserialize() to create instances from custom string values
custom = CardIssuingNetwork.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `DISCOVER` | discover   |
| `SHAZAM`   | shazam     |
| `VISA`     | visa       |