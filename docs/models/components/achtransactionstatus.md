# ACHTransactionStatus

Status of a transaction within the ACH lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = ACHTransactionStatus::UNKNOWN
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