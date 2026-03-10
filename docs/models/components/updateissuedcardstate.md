# UpdateIssuedCardState

Updates the state of a Moov issued card.
- `closed`: The card is permanently deactivated and cannot approve authorizations. A card can be closed by request or when it expires.

## Example Usage

```ruby
require "moov_ruby"

value = UpdateIssuedCardState::CLOSED
```


## Values

| Name     | Value    |
| -------- | -------- |
| `CLOSED` | closed   |