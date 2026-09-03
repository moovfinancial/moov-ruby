# GeographicReach

## Example Usage

```ruby
require "moov_ruby"

value = GeographicReach::INTERNATIONAL_ONLY

# Open enum: use .deserialize() to create instances from custom string values
custom = GeographicReach.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `INTERNATIONAL_ONLY`   | international-only     |
| `US_AND_INTERNATIONAL` | us-and-international   |
| `US_ONLY`              | us-only                |