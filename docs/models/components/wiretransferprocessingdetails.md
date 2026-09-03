# WireTransferProcessingDetails

Wire-specific processing details returned on a transfer.


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `status`                                                                                  | [Models::Components::WireTransactionStatus](../../models/shared/wiretransactionstatus.md) | :heavy_check_mark:                                                                        | Status of a transaction within the wire lifecycle.                                        |
| `network_response_code`                                                                   | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | Response code returned by the network on failure.                                         |
| `failure_code`                                                                            | [T.nilable(Models::Components::WireFailureCode)](../../models/shared/wirefailurecode.md)  | :heavy_minus_sign:                                                                        | Status codes for wire failures.                                                           |