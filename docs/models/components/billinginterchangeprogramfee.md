# BillingInterchangeProgramFee

Details of a specific interchange program fee.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `program_name`                                                            | *::String*                                                                | :heavy_check_mark:                                                        | The name of the interchange program.                                      |
| `count`                                                                   | *::Integer*                                                               | :heavy_check_mark:                                                        | The number of transactions for this program.                              |
| `percentage_rate`                                                         | *::Float*                                                                 | :heavy_check_mark:                                                        | The percentage rate for this program.                                     |
| `per_item_rate`                                                           | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The per-item rate for this program.                                       |
| `total`                                                                   | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The total fee amount for this program.                                    |
| `transfer_volume`                                                         | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The total transfer volume for this program.                               |