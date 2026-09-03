# RTPTransactionStatus

Status of a transaction within the RTP lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = RTPTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = RTPTransactionStatus.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `INITIATED`                | initiated                  |
| `COMPLETED`                | completed                  |
| `FAILED`                   | failed                     |
| `ACCEPTED_WITHOUT_POSTING` | accepted-without-posting   |