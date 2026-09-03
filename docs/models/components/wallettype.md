# WalletType

Type of a wallet.
  - `default`: The system-generated wallet automatically created when an account is granted the wallet capability.
  - `general`: An additional, user-defined wallet created via API or Dashboard.
  - `card-issuing`: The system-generated wallet automatically created when an account is granted the card-issuing capability.

## Example Usage

```ruby
require "moov_ruby"

value = WalletType::DEFAULT

# Open enum: use .deserialize() to create instances from custom string values
custom = WalletType.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `DEFAULT`      | default        |
| `GENERAL`      | general        |
| `CARD_ISSUING` | card-issuing   |