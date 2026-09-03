# IssuingAuthorizationStatus

Status of a card issuing authorization.

## Example Usage

```ruby
require "moov_ruby"

value = IssuingAuthorizationStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuingAuthorizationStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | pending    |
| `DECLINED` | declined   |
| `CANCELED` | canceled   |
| `CLEARED`  | cleared    |
| `EXPIRED`  | expired    |