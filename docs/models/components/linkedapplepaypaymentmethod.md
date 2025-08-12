# LinkedApplePayPaymentMethod


## Fields

| Field                                                                             | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_method_id`                                                               | *::String*                                                                        | :heavy_check_mark:                                                                | The new payment method's ID.                                                      |
| `payment_method_type`                                                             | [Models::Components::PaymentMethodType](../../models/shared/paymentmethodtype.md) | :heavy_check_mark:                                                                | The payment method type that represents a payment rail and directionality         |
| `apple_pay`                                                                       | [Models::Components::ApplePayResponse](../../models/shared/applepayresponse.md)   | :heavy_check_mark:                                                                | Describes an Apple Pay token on a Moov account.                                   |