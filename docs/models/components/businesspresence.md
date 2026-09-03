# BusinessPresence

## Example Usage

```ruby
require "moov_ruby"

value = BusinessPresence::COMMERCIAL_OFFICE

# Open enum: use .deserialize() to create instances from custom string values
custom = BusinessPresence.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `COMMERCIAL_OFFICE` | commercial-office   |
| `HOME_BASED`        | home-based          |
| `MIXED_PRESENCE`    | mixed-presence      |
| `MOBILE_BUSINESS`   | mobile-business     |
| `ONLINE_ONLY`       | online-only         |
| `RETAIL_STOREFRONT` | retail-storefront   |