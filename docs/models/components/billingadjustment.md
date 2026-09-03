# BillingAdjustment

An adjustment (correction) fee grouped by its statement line-item name.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `fee_name`                                                                | *::String*                                                                | :heavy_check_mark:                                                        | The name of the adjustment fee, shown as the statement line item.         |
| `count`                                                                   | *::Integer*                                                               | :heavy_check_mark:                                                        | The number of adjustments with this fee name.                             |
| `amount`                                                                  | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The total amount for this fee name. May be negative for a credit/refund.  |