# IssuedCardEventType

The type of event that occurred on the card.

## Example Usage

```ruby
require "moov_ruby"

value = IssuedCardEventType::AUTHORIZATION

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuedCardEventType.deserialize("custom_value")
```


## Values

| Name                        | Value                       |
| --------------------------- | --------------------------- |
| `AUTHORIZATION`             | authorization               |
| `REVERSAL`                  | reversal                    |
| `AUTHORIZATION_ADVICE`      | authorization-advice        |
| `AUTHORIZATION_EXPIRATION`  | authorization-expiration    |
| `AUTHORIZATION_INCREMENTAL` | authorization-incremental   |
| `CLEARING`                  | clearing                    |