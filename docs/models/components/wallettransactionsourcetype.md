# WalletTransactionSourceType

## Example Usage

```ruby
require "moov_ruby"

value = WalletTransactionSourceType::TRANSFER

# Open enum: use .deserialize() to create instances from custom string values
custom = WalletTransactionSourceType.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `TRANSFER`                 | transfer                   |
| `DISPUTE`                  | dispute                    |
| `ISSUING_CARD_TRANSACTION` | issuing-card-transaction   |
| `ISSUING_AUTHORIZATION`    | issuing-authorization      |
| `SWEEP`                    | sweep                      |
| `ADJUSTMENT`               | adjustment                 |
| `FEE`                      | fee                        |
| `RESIDUAL`                 | residual                   |