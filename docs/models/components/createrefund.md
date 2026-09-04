# CreateRefund

Specifies a partial amount to refund. 

Before v2026.10, this request body may be omitted. In v2026.10 and later, send an empty object to refund the full amount of the original transfer.


## Fields

| Field                                                                                                 | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `amount`                                                                                              | [T.nilable(Models::Components::AmountDecimal)](../../models/shared/amountdecimal.md)                  | :heavy_minus_sign:                                                                                    | Amount to refund. If omitted, the original transfer's full amount will be refunded.                   |
| `capture_id`                                                                                          | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | ID of the capture to refund. This field is only relevant for an auth-capture `card-payment` transfer. |
| `amount_details`                                                                                      | [T.nilable(Models::Components::RefundAmountDetails)](../../models/shared/refundamountdetails.md)      | :heavy_minus_sign:                                                                                    | Breakdown of the refunded amount.                                                                     |