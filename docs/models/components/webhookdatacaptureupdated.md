# WebhookDataCaptureUpdated


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `account_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | The accountID which facilitated the transfer the capture belongs to.      |
| `transfer_id`                                                             | *::String*                                                                | :heavy_check_mark:                                                        | The transfer the capture belongs to.                                      |
| `capture_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `status`                                                                  | [Models::Components::CaptureStatus](../../models/shared/capturestatus.md) | :heavy_check_mark:                                                        | N/A                                                                       |