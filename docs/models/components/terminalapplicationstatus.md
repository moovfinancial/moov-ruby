# TerminalApplicationStatus

Status of the terminal application.

## Example Usage

```ruby
require "moov_ruby"

value = TerminalApplicationStatus::UNDEFINED

# Open enum: use .deserialize() to create instances from custom string values
custom = TerminalApplicationStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `UNDEFINED` | undefined   |
| `PENDING`   | pending     |
| `ENABLED`   | enabled     |
| `DISABLED`  | disabled    |