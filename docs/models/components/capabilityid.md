# CapabilityID

Moov account capabilities.

**Deprecated capabilities**

The `send-funds`, `collect-funds`, and `wallet` capability IDs are deprecated. Request granular capabilities instead (for example, `send-funds.ach`, `collect-funds.card-payments`, or `wallet.balance`). Deprecated values will be removed in a future API version.

Read our [capabilities reference](https://docs.moov.io/guides/accounts/capabilities/reference/) to choose the right capabilities for your integration.

The `production-app`, `platform.production-app`, and / or `platform.wallet-transfers` capabilities might appear in the list for your Partner account. These are read-only capabilities that Moov requests. These capabilities remain active with your account and require no additional action.

## Example Usage

```ruby
require "moov_ruby"

value = CapabilityID::TRANSFERS
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `TRANSFERS`          | transfers            |
| `SEND_FUNDS`         | send-funds           |
| `COLLECT_FUNDS`      | collect-funds        |
| `WALLET`             | wallet               |
| `CARD_ISSUING`       | card-issuing         |
| `ISSUING_CARDHOLDER` | issuing.cardholder   |
| `PRODUCTION_APP`     | production-app       |