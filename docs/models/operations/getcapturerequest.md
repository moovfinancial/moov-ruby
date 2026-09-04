# GetCaptureRequest


## Fields

| Field                                                                             | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `account_id`                                                                      | *::String*                                                                        | :heavy_check_mark:                                                                | Moov account ID of an authorized partner or the transfer's source or destination. |
| `transfer_id`                                                                     | *::String*                                                                        | :heavy_check_mark:                                                                | Identifier for the auth-capture `card-payment` transfer.                          |
| `capture_id`                                                                      | *::String*                                                                        | :heavy_check_mark:                                                                | Identifier for the capture.                                                       |