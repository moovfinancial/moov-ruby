<!-- Start SDK Example Usage [usage] -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::CreateAccount.new(
  account_type: Models::Components::CreateAccountType::BUSINESS,
  profile: Models::Components::CreateProfile.new(
    business: Models::Components::CreateBusinessProfile.new(
      legal_business_name: 'Whole Body Fitness LLC'
    )
  )
)
res = s.accounts.create(request: req)

unless res.account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->