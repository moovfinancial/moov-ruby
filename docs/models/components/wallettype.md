# WalletType

Type of a wallet.
  - `default`: The system-generated wallet automatically created when an account is granted the wallet capability.
  - `general`: An additional, user-defined wallet created via API or Dashboard.
  - `card-issuing`: The system-generated wallet automatically created when an account is granted the card-issuing capability.

## Example Usage

```ruby
require "moov_ruby"

value = WalletType::DEFAULT
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `DEFAULT`      | default        |
| `GENERAL`      | general        |
| `CARD_ISSUING` | card-issuing   |