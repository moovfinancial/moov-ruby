# IssuedCardAuthorizationEventResult

The result of an event.

## Example Usage

```ruby
require "moov_ruby"

value = IssuedCardAuthorizationEventResult::APPROVED

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuedCardAuthorizationEventResult.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `APPROVED`  | approved    |
| `DECLINED`  | declined    |
| `PROCESSED` | processed   |