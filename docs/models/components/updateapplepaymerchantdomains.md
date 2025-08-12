# UpdateApplePayMerchantDomains


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                | Example                                                                    |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `add_domains`                                                              | T::Array<*::String*>                                                       | :heavy_minus_sign:                                                         | A unique list of fully-qualified, top-level or sub-domain names to add.    | [<br/>"pay.classbooker.dev"<br/>]                                          |
| `remove_domains`                                                           | T::Array<*::String*>                                                       | :heavy_minus_sign:                                                         | A unique list of fully-qualified, top-level or sub-domain names to remove. | [<br/>"checkout.classbooker.dev"<br/>]                                     |