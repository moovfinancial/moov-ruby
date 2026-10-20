# CreateInvoiceNotification


## Fields

| Field                                                                                           | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `channels`                                                                                      | T::Array<[Models::Components::NotificationChannel](../../models/shared/notificationchannel.md)> | :heavy_check_mark:                                                                              | The channels to send the notification on. Required, must contain at least one channel.          |