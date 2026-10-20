# InvoiceNotificationLimitedChannel


## Fields

| Field                                                                                 | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `channel`                                                                             | [Models::Components::NotificationChannel](../../models/shared/notificationchannel.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `available_on`                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                  | :heavy_check_mark:                                                                    | When a notification to the channel can be sent again.                                 |