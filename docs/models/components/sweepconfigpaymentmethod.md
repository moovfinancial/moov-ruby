# SweepConfigPaymentMethod

The payment method used to push or pull funds to a bank account.
The push payment method can only be ach-credit-standard, ach-credit-same-day, or rtp-credit. The pull payment method can only be ach-debit-fund.


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `payment_method_id`                                                  | *::String*                                                           | :heavy_check_mark:                                                   | ID of the payment method.                                            |
| `disabled_on`                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | N/A                                                                  |