# WalletStatus

Status of a wallet.
  - `active`: The wallet is available for use and has an enabled payment method.
  - `closed`: The wallet is no longer active and the corresponding payment method has been disabled.

## Example Usage

```ruby
require "moov_ruby"

value = WalletStatus::ACTIVE
```


## Values

| Name     | Value    |
| -------- | -------- |
| `ACTIVE` | active   |
| `CLOSED` | closed   |