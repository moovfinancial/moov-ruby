# TransferEventAuthorizationStatus

## Example Usage

```ruby
require "moov_ruby"

value = TransferEventAuthorizationStatus::APPROVED

# Open enum: use .deserialize() to create instances from custom string values
custom = TransferEventAuthorizationStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `APPROVED` | approved   |
| `DECLINED` | declined   |
| `REVERSED` | reversed   |