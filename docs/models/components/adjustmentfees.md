# AdjustmentFees

A detailed breakdown of adjustment (correction) fees by fee name.


## Fields

| Field                                                                                       | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `items`                                                                                     | T::Array<[Models::Components::BillingAdjustment](../../models/shared/billingadjustment.md)> | :heavy_check_mark:                                                                          | Adjustment fees grouped by fee name.                                                        |
| `total`                                                                                     | [Models::Components::BillingCountAndAmount](../../models/shared/billingcountandamount.md)   | :heavy_check_mark:                                                                          | Total adjustment fees.                                                                      |