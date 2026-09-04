# CardType

The type of the card.

## Example Usage

```ruby
require "moov_ruby"

value = CardType::DEBIT

# Open enum: use .deserialize() to create instances from custom string values
custom = CardType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `DEBIT`   | debit     |
| `CREDIT`  | credit    |
| `PREPAID` | prepaid   |
| `UNKNOWN` | unknown   |