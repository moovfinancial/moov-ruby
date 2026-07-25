# TransferFeePaidBy

Indicates which party bears fees for a transfer, keyed by fee type.


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `payout`                                                                     | [T.nilable(Models::Components::FeePaidBy)](../../models/shared/feepaidby.md) | :heavy_minus_sign:                                                           | For payouts, indicates which party bears the fee. Defaults to `source`.      |