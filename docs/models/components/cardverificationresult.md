# CardVerificationResult

The result of a card verification check.

## Example Usage

```ruby
require "moov_ruby"

value = CardVerificationResult::NO_MATCH

# Open enum: use .deserialize() to create instances from custom string values
custom = CardVerificationResult.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NO_MATCH`      | noMatch         |
| `MATCH`         | match           |
| `NOT_CHECKED`   | notChecked      |
| `UNAVAILABLE`   | unavailable     |
| `PARTIAL_MATCH` | partialMatch    |