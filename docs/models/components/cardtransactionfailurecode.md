# CardTransactionFailureCode

## Example Usage

```ruby
require "moov_ruby"

value = CardTransactionFailureCode::CALL_ISSUER

# Open enum: use .deserialize() to create instances from custom string values
custom = CardTransactionFailureCode.deserialize("custom_value")
```


## Values

| Name                          | Value                         |
| ----------------------------- | ----------------------------- |
| `CALL_ISSUER`                 | call-issuer                   |
| `DO_NOT_HONOR`                | do-not-honor                  |
| `PROCESSING_ERROR`            | processing-error              |
| `INVALID_TRANSACTION`         | invalid-transaction           |
| `INVALID_AMOUNT`              | invalid-amount                |
| `NO_SUCH_ISSUER`              | no-such-issuer                |
| `REENTER_TRANSACTION`         | reenter-transaction           |
| `CVV_MISMATCH`                | cvv-mismatch                  |
| `LOST_OR_STOLEN`              | lost-or-stolen                |
| `INSUFFICIENT_FUNDS`          | insufficient-funds            |
| `INVALID_CARD_NUMBER`         | invalid-card-number           |
| `INVALID_MERCHANT`            | invalid-merchant              |
| `EXPIRED_CARD`                | expired-card                  |
| `INCORRECT_PIN`               | incorrect-pin                 |
| `TRANSACTION_NOT_ALLOWED`     | transaction-not-allowed       |
| `SUSPECTED_FRAUD`             | suspected-fraud               |
| `AMOUNT_LIMIT_EXCEEDED`       | amount-limit-exceeded         |
| `VELOCITY_LIMIT_EXCEEDED`     | velocity-limit-exceeded       |
| `REVOCATION_OF_AUTHORIZATION` | revocation-of-authorization   |
| `CARD_NOT_ACTIVATED`          | card-not-activated            |
| `ISSUER_NOT_AVAILABLE`        | issuer-not-available          |
| `COULD_NOT_ROUTE`             | could-not-route               |
| `CARDHOLDER_ACCOUNT_CLOSED`   | cardholder-account-closed     |
| `ACCOUNT_CLOSED`              | account-closed                |
| `ACCOUNT_NOT_ACTIVATED`       | account-not-activated         |
| `AUTHENTICATION_FAILED`       | authentication-failed         |
| `AUTHENTICATION_REQUIRED`     | authentication-required       |
| `CARDHOLDER_ACTION_REQUIRED`  | cardholder-action-required    |
| `FORMAT_ERROR`                | format-error                  |
| `INVALID_PIN`                 | invalid-pin                   |
| `OFFLINE_APPROVED`            | offline-approved              |
| `OFFLINE_DECLINED`            | offline-declined              |
| `PARTIAL_APPROVAL`            | partial-approval              |
| `PAYMENT_STOPPED`             | payment-stopped               |
| `PIN_REQUIRED`                | pin-required                  |
| `RECORD_NOT_FOUND`            | record-not-found              |
| `SURCHARGE_NOT_PERMITTED`     | surcharge-not-permitted       |
| `TRANSACTION_REVERSED`        | transaction-reversed          |
| `VERIFICATION_FAILED`         | verification-failed           |
| `UNKNOWN_ISSUE`               | unknown-issue                 |
| `DUPLICATE_TRANSACTION`       | duplicate-transaction         |