# InvoiceExternalPayment


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `description`                                                             | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `foreign_id`                                                              | *T.nilable(::String)*                                                     | :heavy_minus_sign:                                                        | N/A                                                                       |
| `payment_date`                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)      | :heavy_minus_sign:                                                        | N/A                                                                       |
| `amount`                                                                  | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | N/A                                                                       |