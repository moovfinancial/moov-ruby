# IssuedCardState

The `state` represents the operational status of an issued card. A card can only approve incoming authorizations if it is in an active state.

- `active`: The card is operational and can approve authorizations.
- `frozen`: The card is temporarily suspended and cannot approve authorizations. A frozen card can be reactivated by setting its state back to `active`.
- `closed`: The card is permanently deactivated and cannot approve authorizations. A card can be closed by request or when it expires.

## Example Usage

```ruby
require "moov_ruby"

value = IssuedCardState::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuedCardState.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `ACTIVE` | active   |
| `FROZEN` | frozen   |
| `CLOSED` | closed   |