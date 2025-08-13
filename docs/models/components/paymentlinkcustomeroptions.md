# PaymentLinkCustomerOptions


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `require_address`                                                                   | *T.nilable(T::Boolean)*                                                             | :heavy_minus_sign:                                                                  | If true, a billing address is required when completing the payment form.            |
| `require_phone`                                                                     | *T.nilable(T::Boolean)*                                                             | :heavy_minus_sign:                                                                  | If true, a phone number is required when completing the payment form.               |
| `metadata`                                                                          | T::Hash[Symbol, *::String*]                                                         | :heavy_minus_sign:                                                                  | Optional free-form metadata for the Moov account that will represent this customer. |