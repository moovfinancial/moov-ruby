# CardTransactionStatus

Status of a transaction within the card payment lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = CardTransactionStatus::INITIATED
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INITIATED` | initiated   |
| `CONFIRMED` | confirmed   |
| `CANCELED`  | canceled    |
| `SETTLED`   | settled     |
| `FAILED`    | failed      |
| `COMPLETED` | completed   |