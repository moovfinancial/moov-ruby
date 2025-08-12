# OnboardingPartnerAccount

The account that created the onboarding invite.


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `account_id`                                                       | *::String*                                                         | :heavy_check_mark:                                                 | The account ID of the partner that created the invite.             |                                                                    |
| `account_mode`                                                     | [Models::Components::Mode](../../models/shared/mode.md)            | :heavy_check_mark:                                                 | The operating mode for an account.                                 | production                                                         |
| `display_name`                                                     | *::String*                                                         | :heavy_check_mark:                                                 | The name of the Moov account used to create the onboarding invite. | Bob's Widgets                                                      |