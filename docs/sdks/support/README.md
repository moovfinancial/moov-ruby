# Support
(*support*)

## Overview

### Available Operations

* [create_ticket](#create_ticket) - Create a support ticket for a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.write` scope.

If you're creating the ticket on behalf of another account, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.write` and `/accounts/{accountID}/profile.read` scopes.
* [list_tickets](#list_tickets) - List all the support tickets created under a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're listing another account's tickets, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.
* [get_ticket](#get_ticket) - Retrieve a support ticket by ID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're retrieving another account's ticket, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.
* [update_ticket](#update_ticket) - Updates a support ticket.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.write` scope.

If you're updating the ticket on behalf of another account, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.write` and `/accounts/{accountID}/profile.read` scopes.
* [list_ticket_messages](#list_ticket_messages) - List all the messages for a support ticket.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're listing another account's messages, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.

## create_ticket

Create a support ticket for a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.write` scope.

If you're creating the ticket on behalf of another account, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.write` and `/accounts/{accountID}/profile.read` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTicket" method="post" path="/accounts/{accountID}/tickets" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.support.create_ticket(account_id: '4af4784a-c777-48f6-8211-063d5341f84b', create_ticket: Models::Components::CreateTicket.new(
  title: '<value>',
  body: '<value>',
  contact: Models::Components::TicketContact.new(
    email: 'Melany.Roberts@yahoo.com',
  ),
))

unless res.ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `create_ticket`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [Models::Components::CreateTicket](../../models/shared/createticket.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::CreateTicketResponse)](../../models/operations/createticketresponse.md)**

### Errors

| Error Type                        | Status Code                       | Content Type                      |
| --------------------------------- | --------------------------------- | --------------------------------- |
| Models::Errors::GenericError      | 400, 409                          | application/json                  |
| Models::Errors::CreateTicketError | 422                               | application/json                  |
| Errors::APIError                  | 4XX, 5XX                          | \*/\*                             |

## list_tickets

List all the support tickets created under a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're listing another account's tickets, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTickets" method="get" path="/accounts/{accountID}/tickets" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

req = Models::Operations::ListTicketsRequest.new(
  count: 20,
  account_id: '8ef75c13-2a50-4438-b294-2a850eb4986d',
)

res = s.support.list_tickets(request: req)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListTicketsRequest](../../models/operations/listticketsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListTicketsResponse)](../../models/operations/listticketsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ticket

Retrieve a support ticket by ID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're retrieving another account's ticket, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTicket" method="get" path="/accounts/{accountID}/tickets/{ticketID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.support.get_ticket(account_id: '873ccb78-88b3-4520-85f2-7cc2aef5704b', ticket_id: '91fea9bf-b373-40f7-86e0-2c80690126e4')

unless res.ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `ticket_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::GetTicketResponse)](../../models/operations/getticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ticket

Updates a support ticket.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.write` scope.

If you're updating the ticket on behalf of another account, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.write` and `/accounts/{accountID}/profile.read` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTicket" method="patch" path="/accounts/{accountID}/tickets/{ticketID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.support.update_ticket(account_id: '7cce2b85-37c2-4c76-954c-03dcec2b12f0', ticket_id: '1d621d17-8e7d-4ac0-9f7d-6e9fcebe8eef', update_ticket: Models::Components::UpdateTicket.new())

unless res.ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `ticket_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `update_ticket`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [Models::Components::UpdateTicket](../../models/shared/updateticket.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::UpdateTicketResponse)](../../models/operations/updateticketresponse.md)**

### Errors

| Error Type                        | Status Code                       | Content Type                      |
| --------------------------------- | --------------------------------- | --------------------------------- |
| Models::Errors::GenericError      | 400, 409                          | application/json                  |
| Models::Errors::UpdateTicketError | 422                               | application/json                  |
| Errors::APIError                  | 4XX, 5XX                          | \*/\*                             |

## list_ticket_messages

List all the messages for a support ticket.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/tickets.read` scope.

If you're listing another account's messages, then you'll need to
specify the `/accounts/{partnerAccountID}/tickets.read` and `/accounts/{accountID}/profile.read` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTicketMessages" method="get" path="/accounts/{accountID}/tickets/{ticketID}/messages" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.support.list_ticket_messages(account_id: '72444918-8529-4986-b10c-41817e45d09e', ticket_id: 'edeaab65-c54c-45b8-881b-19138f125fb1')

unless res.ticket_messages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `ticket_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::ListTicketMessagesResponse)](../../models/operations/listticketmessagesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |