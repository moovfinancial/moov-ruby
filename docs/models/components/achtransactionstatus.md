# ACHTransactionStatus

Status of a transaction within the ACH lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = ACHTransactionStatus::UNKNOWN

# Open enum: use .deserialize() to create instances from custom string values
custom = ACHTransactionStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `UNKNOWN`    |              |
| `INITIATED`  | initiated    |
| `ORIGINATED` | originated   |
| `CORRECTED`  | corrected    |
| `RETURNED`   | returned     |
| `COMPLETED`  | completed    |
| `CANCELED`   | canceled     |