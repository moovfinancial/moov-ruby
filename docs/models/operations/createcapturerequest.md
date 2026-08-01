# CreateCaptureRequest


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `x_idempotency_key`                                                       | *::String*                                                                | :heavy_check_mark:                                                        | Prevents duplicate captures from being created.                           |
| `account_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | The merchant's Moov account ID.                                           |
| `transfer_id`                                                             | *::String*                                                                | :heavy_check_mark:                                                        | Identifier for the transfer.                                              |
| `create_capture`                                                          | [Models::Components::CreateCapture](../../models/shared/createcapture.md) | :heavy_check_mark:                                                        | N/A                                                                       |