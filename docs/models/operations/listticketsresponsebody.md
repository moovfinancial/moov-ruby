# ListTicketsResponseBody

A paginated list of items. The `nextPage` field is omitted if there are no more pages available.


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `items`                                                                                    | T::Array<[Models::Components::Ticket](../../models/shared/ticket.md)>                      | :heavy_check_mark:                                                                         | N/A                                                                                        |
| `next_page`                                                                                | [T.nilable(Models::Components::ItemListNextPage)](../../models/shared/itemlistnextpage.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |