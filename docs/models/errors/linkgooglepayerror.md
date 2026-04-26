# LinkGooglePayError


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `error`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Describes an error that wasn't attributable to a single request field.      |
| `merchant_account_id`                                                       | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Describes an error within the `merchantAccountID` request field.            |
| `payment_method_data`                                                       | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Describes an error within the `paymentMethodData` request field.            |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |