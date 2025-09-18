# BillingSummaryInterchange

A summary of interchange fees by card brand.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `visa`                                                                    | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total interchange fees for Visa.                                          |
| `mastercard`                                                              | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total interchange fees for Mastercard.                                    |
| `discover`                                                                | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total interchange fees for Discover.                                      |
| `american_express`                                                        | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total interchange fees for American Express.                              |