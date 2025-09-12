# CreateTicket

Request to create a new support ticket.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `title`                                                                   | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `body`                                                                    | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `author`                                                                  | *T.nilable(::String)*                                                     | :heavy_minus_sign:                                                        | N/A                                                                       |
| `contact`                                                                 | [Models::Components::TicketContact](../../models/shared/ticketcontact.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `foreign_id`                                                              | *T.nilable(::String)*                                                     | :heavy_minus_sign:                                                        | N/A                                                                       |