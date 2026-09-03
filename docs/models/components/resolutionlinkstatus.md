# ResolutionLinkStatus

The status of a resolution link.

## Example Usage

```ruby
require "moov_ruby"

value = ResolutionLinkStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = ResolutionLinkStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `ACTIVE`    | active      |
| `SUBMITTED` | submitted   |
| `COMPLETED` | completed   |
| `DISABLED`  | disabled    |
| `EXPIRED`   | expired     |