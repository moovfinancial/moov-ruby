# IssuingControlsAllowedSchedule

Limits card usage to specific days and times. Set to `null` to remove all schedule restrictions.


## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `timezone`                                                                                    | *::String*                                                                                    | :heavy_check_mark:                                                                            | IANA timezone string used to evaluate window boundaries against the authorization time.       |
| `windows`                                                                                     | T::Array<[Models::Components::ScheduleWindow](../../models/shared/schedulewindow.md)>         | :heavy_check_mark:                                                                            | Time windows during which the card may authorize. Any matching window allows the transaction. |