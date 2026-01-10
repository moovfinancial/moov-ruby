# Scheduling

## Overview

### Available Operations

* [create](#create) - Describes the schedule to create or modify.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.
* [list](#list) - Describes a list of schedules associated with an account. Append the `hydrate=accounts` query parameter to include partial account details in the response.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.
* [update](#update) - Describes the schedule to modify.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.
* [get](#get) - Describes a schedule associated with an account. Requires at least 1 occurrence or recurTransfer to be specified.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.
* [cancel](#cancel) - Describes the schedule to cancel.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.
* [get_occurrance](#get_occurrance) - Gets a specific occurrence.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

## create

Describes the schedule to create or modify.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createSchedule" method="post" path="/accounts/{accountID}/schedules" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.scheduling.create(account_id: '8b64fef5-c389-40d5-838f-d6ae10e70162', upsert_schedule: Models::Components::UpsertSchedule.new(
  occurrences: [
    Models::Components::Occurrence.new(
      occurrence_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
      run_on: DateTime.iso8601('2009-11-10T23:00:00Z'),
      run_transfer: Models::Components::CreateRunTransfer.new(
        amount: Models::Components::Amount.new(
          currency: 'USD',
          value: 1204,
        ),
        destination: Models::Components::SchedulePaymentMethod.new(
          payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
          ach_details: Models::Components::AchDetails.new(
            company_entry_description: 'Gym dues',
            originating_company_name: 'Whole Body Fit',
          ),
          card_details: Models::Components::CardDetails.new(
            dynamic_descriptor: 'WhlBdy *Yoga 11-12',
          ),
        ),
        partner_account_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        source: Models::Components::SchedulePaymentMethod.new(
          payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
          ach_details: Models::Components::AchDetails.new(
            company_entry_description: 'Gym dues',
            originating_company_name: 'Whole Body Fit',
          ),
          card_details: Models::Components::CardDetails.new(
            dynamic_descriptor: 'WhlBdy *Yoga 11-12',
          ),
        ),
        description: 'er mob marathon lest optimistically responsible',
      ),
    ),
  ],
  recur: Models::Components::Recur.new(
    recurrence_rule: '<value>',
    run_transfer: Models::Components::CreateRunTransfer.new(
      amount: Models::Components::Amount.new(
        currency: 'USD',
        value: 1204,
      ),
      sales_tax_amount: Models::Components::Amount.new(
        currency: 'USD',
        value: 1204,
      ),
      destination: Models::Components::SchedulePaymentMethod.new(
        payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        ach_details: Models::Components::AchDetails.new(
          company_entry_description: 'Gym dues',
          originating_company_name: 'Whole Body Fit',
        ),
        card_details: Models::Components::CardDetails.new(
          dynamic_descriptor: 'WhlBdy *Yoga 11-12',
        ),
      ),
      partner_account_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
      source: Models::Components::SchedulePaymentMethod.new(
        payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        ach_details: Models::Components::AchDetails.new(
          company_entry_description: 'Gym dues',
          originating_company_name: 'Whole Body Fit',
        ),
        card_details: Models::Components::CardDetails.new(
          dynamic_descriptor: 'WhlBdy *Yoga 11-12',
        ),
      ),
      description: 'er mob marathon lest optimistically responsible',
      line_items: Models::Components::CreateScheduledTransferLineItems.new(
        items: [],
      ),
    ),
    start: DateTime.iso8601('2009-11-10T23:00:00Z'),
  ),
))

unless res.schedule_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Account ID of the account that will run the transfer.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `upsert_schedule`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [Models::Components::UpsertSchedule](../../models/shared/upsertschedule.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::CreateScheduleResponse)](../../models/operations/createscheduleresponse.md)**

### Errors

| Error Type                              | Status Code                             | Content Type                            |
| --------------------------------------- | --------------------------------------- | --------------------------------------- |
| Models::Errors::GenericError            | 400, 409                                | application/json                        |
| Models::Errors::ScheduleValidationError | 422                                     | application/json                        |
| Errors::APIError                        | 4XX, 5XX                                | \*/\*                                   |

## list

Describes a list of schedules associated with an account. Append the `hydrate=accounts` query parameter to include partial account details in the response.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSchedules" method="get" path="/accounts/{accountID}/schedules" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

req = Models::Operations::ListSchedulesRequest.new(
  skip: 60,
  count: 20,
  account_id: 'b69f6366-984e-40f9-82a0-65335a43431d',
)

res = s.scheduling.list(request: req)

unless res.schedule_list_responses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListSchedulesRequest](../../models/operations/listschedulesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListSchedulesResponse)](../../models/operations/listschedulesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Describes the schedule to modify.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateSchedule" method="put" path="/accounts/{accountID}/schedules/{scheduleID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.scheduling.update(account_id: '7becca38-ec01-4fcf-8cf7-c187c7cf6a7a', schedule_id: '11b29a8a-d60e-4ec9-900e-7fda62cd2415', upsert_schedule: Models::Components::UpsertSchedule.new(
  occurrences: [
    Models::Components::Occurrence.new(
      occurrence_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
      run_on: DateTime.iso8601('2009-11-10T23:00:00Z'),
      run_transfer: Models::Components::CreateRunTransfer.new(
        amount: Models::Components::Amount.new(
          currency: 'USD',
          value: 1204,
        ),
        destination: Models::Components::SchedulePaymentMethod.new(
          payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
          ach_details: Models::Components::AchDetails.new(
            company_entry_description: 'Gym dues',
            originating_company_name: 'Whole Body Fit',
          ),
          card_details: Models::Components::CardDetails.new(
            dynamic_descriptor: 'WhlBdy *Yoga 11-12',
          ),
        ),
        partner_account_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        source: Models::Components::SchedulePaymentMethod.new(
          payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
          ach_details: Models::Components::AchDetails.new(
            company_entry_description: 'Gym dues',
            originating_company_name: 'Whole Body Fit',
          ),
          card_details: Models::Components::CardDetails.new(
            dynamic_descriptor: 'WhlBdy *Yoga 11-12',
          ),
        ),
        description: 'yum who queasily bemuse ick dull almighty incidentally er despite',
      ),
    ),
  ],
  recur: Models::Components::Recur.new(
    recurrence_rule: '<value>',
    run_transfer: Models::Components::CreateRunTransfer.new(
      amount: Models::Components::Amount.new(
        currency: 'USD',
        value: 1204,
      ),
      sales_tax_amount: Models::Components::Amount.new(
        currency: 'USD',
        value: 1204,
      ),
      destination: Models::Components::SchedulePaymentMethod.new(
        payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        ach_details: Models::Components::AchDetails.new(
          company_entry_description: 'Gym dues',
          originating_company_name: 'Whole Body Fit',
        ),
        card_details: Models::Components::CardDetails.new(
          dynamic_descriptor: 'WhlBdy *Yoga 11-12',
        ),
      ),
      partner_account_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
      source: Models::Components::SchedulePaymentMethod.new(
        payment_method_id: 'c520f1b9-0ba7-42f5-b977-248cdbe41c69',
        ach_details: Models::Components::AchDetails.new(
          company_entry_description: 'Gym dues',
          originating_company_name: 'Whole Body Fit',
        ),
        card_details: Models::Components::CardDetails.new(
          dynamic_descriptor: 'WhlBdy *Yoga 11-12',
        ),
      ),
      description: 'yum who queasily bemuse ick dull almighty incidentally er despite',
      line_items: Models::Components::CreateScheduledTransferLineItems.new(
        items: [
          Models::Components::CreateScheduledTransferLineItem.new(
            name: '<value>',
            base_price: Models::Components::AmountDecimal.new(
              currency: 'USD',
              value_decimal: '12.987654321',
            ),
            quantity: 973_458,
            options: [
              Models::Components::CreateScheduledTransferLineItemOption.new(
                name: '<value>',
                quantity: 221_042,
                price_modifier: Models::Components::AmountDecimal.new(
                  currency: 'USD',
                  value_decimal: '12.987654321',
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    start: DateTime.iso8601('2009-11-10T23:00:00Z'),
  ),
))

unless res.schedule_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Account ID of the account that will run the transfer.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `schedule_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `upsert_schedule`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [Models::Components::UpsertSchedule](../../models/shared/upsertschedule.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::UpdateScheduleResponse)](../../models/operations/updatescheduleresponse.md)**

### Errors

| Error Type                              | Status Code                             | Content Type                            |
| --------------------------------------- | --------------------------------------- | --------------------------------------- |
| Models::Errors::GenericError            | 400, 409                                | application/json                        |
| Models::Errors::ScheduleValidationError | 422                                     | application/json                        |
| Errors::APIError                        | 4XX, 5XX                                | \*/\*                                   |

## get

Describes a schedule associated with an account. Requires at least 1 occurrence or recurTransfer to be specified.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSchedules" method="get" path="/accounts/{accountID}/schedules/{scheduleID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.scheduling.get(account_id: '31afd98b-eb55-41b3-8a4f-0ee8ea69e4e0', schedule_id: '55487e07-f3b7-44e8-b6f3-64fc85701c34')

unless res.schedule_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `schedule_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::GetSchedulesResponse)](../../models/operations/getschedulesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## cancel

Describes the schedule to cancel.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="cancelSchedule" method="delete" path="/accounts/{accountID}/schedules/{scheduleID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.scheduling.cancel(account_id: 'e89edcfc-19ca-40eb-802b-a35100dea24d', schedule_id: '5ca67de0-63f6-4cb7-b94a-6c84616ffe03')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Your Moov account ID as the partner running the transfers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `schedule_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::CancelScheduleResponse)](../../models/operations/cancelscheduleresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## get_occurrance

Gets a specific occurrence.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getScheduledOccurrence" method="get" path="/accounts/{accountID}/schedules/{scheduleID}/occurrences/{occurrenceFilter}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.scheduling.get_occurrance(account_id: 'ea12b5d5-6249-4af2-ae48-6141a5251090', schedule_id: '289e94cd-66f1-4df5-999f-46d0f40b4ce9', occurrence_filter: '<value>')

unless res.occurrences_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `schedule_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `occurrence_filter`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Allows the specification of additional filters beyond the UUID.<br/><br/>Specifying a UUID string returns the exact occurrence.<br/>Specifying a RFC 3339 timestamp returns the latest occurrence at or before that timestamp.<br/>Specifying `latest` returns the latest occurrence at or before now.                                                                                                                                                                                                                                                                                             |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::GetScheduledOccurrenceResponse)](../../models/operations/getscheduledoccurrenceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |