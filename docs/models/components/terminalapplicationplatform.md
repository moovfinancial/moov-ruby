# TerminalApplicationPlatform

Platform of the terminal application.

## Example Usage

```ruby
require "moov_ruby"

value = TerminalApplicationPlatform::UNDEFINED

# Open enum: use .deserialize() to create instances from custom string values
custom = TerminalApplicationPlatform.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `UNDEFINED` | undefined   |
| `IOS`       | ios         |
| `ANDROID`   | android     |