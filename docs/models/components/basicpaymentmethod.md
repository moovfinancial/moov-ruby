# BasicPaymentMethod


## Fields

| Field                                                                             | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_method_id`                                                               | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the payment method.                                                         |
| `payment_method_type`                                                             | [Models::Components::PaymentMethodType](../../models/shared/paymentmethodtype.md) | :heavy_check_mark:                                                                | The payment method type that represents a payment rail and directionality         |