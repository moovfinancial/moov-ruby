# TransferControls

Controls for transfers created through a given partner


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `account_id`                                                                 | *::String*                                                                   | :heavy_check_mark:                                                           | ID of the merchant account.                                                  |
| `partner_account_id`                                                         | *::String*                                                                   | :heavy_check_mark:                                                           | ID of the partner account.                                                   |
| `debt_repayment`                                                             | *T::Boolean*                                                                 | :heavy_check_mark:                                                           | Indicates if the account is configured for debt repayment.                   |
| `allow_dynamic_descriptor`                                                   | *T::Boolean*                                                                 | :heavy_check_mark:                                                           | Indicates if the account is allowed to set dynamic descriptors on transfers. |
| `allow_surcharge`                                                            | *T::Boolean*                                                                 | :heavy_check_mark:                                                           | Indicates if the account is allowed to apply surcharges to transfers.        |