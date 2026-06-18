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

| Name                            | Value                           |
| ------------------------------- | ------------------------------- |
| `TRANSFERS`                     | transfers                       |
| `SEND_FUNDS`                    | send-funds                      |
| `SEND_FUNDS_PUSH_TO_CARD`       | send-funds.push-to-card         |
| `MONEY_TRANSFER_PUSH_TO_CARD`   | money-transfer.push-to-card     |
| `SEND_FUNDS_ACH`                | send-funds.ach                  |
| `SEND_FUNDS_RTP`                | send-funds.rtp                  |
| `SEND_FUNDS_INSTANT_BANK`       | send-funds.instant-bank         |
| `COLLECT_FUNDS`                 | collect-funds                   |
| `COLLECT_FUNDS_CARD_PAYMENTS`   | collect-funds.card-payments     |
| `MONEY_TRANSFER_PULL_FROM_CARD` | money-transfer.pull-from-card   |
| `COLLECT_FUNDS_ACH`             | collect-funds.ach               |
| `WALLET`                        | wallet                          |
| `WALLET_BALANCE`                | wallet.balance                  |
| `CARD_ISSUING`                  | card-issuing                    |
| `PRODUCTION_APP`                | production-app                  |
| `PLATFORM_PRODUCTION_APP`       | platform.production-app         |
| `PLATFORM_WALLET_TRANSFERS`     | platform.wallet-transfers       |