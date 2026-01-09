# UpdateWebhook

Request body for updating an existing webhook.


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `url`                                                                                     | *::String*                                                                                | :heavy_check_mark:                                                                        | The URL where webhook events will be sent.                                                |
| `status`                                                                                  | [Models::Components::WebhookStatus](../../models/shared/webhookstatus.md)                 | :heavy_check_mark:                                                                        | The status of the webhook.                                                                |
| `event_types`                                                                             | T::Array<[Models::Components::WebhookEventType](../../models/shared/webhookeventtype.md)> | :heavy_check_mark:                                                                        | The list of event types this webhook should subscribe to.                                 |
| `description`                                                                             | *::String*                                                                                | :heavy_check_mark:                                                                        | A description of the webhook for reference. Can be an empty string.                       |