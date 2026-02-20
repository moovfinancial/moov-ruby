<!-- Start SDK Example Usage [usage] -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  x_moov_version: 'v2024.01.00'
)
res = s.accounts.create(create_account: Models::Components::CreateAccount.new(
  account_type: Models::Components::CreateAccountType::BUSINESS,
  profile: Models::Components::CreateProfile.new(
    business: Models::Components::CreateBusinessProfile.new(
      legal_business_name: 'Whole Body Fitness LLC'
    )
  )
))

unless res.account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->