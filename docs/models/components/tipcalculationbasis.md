# TipCalculationBasis

Defines which amount should be used when calculating the final payment total. This calculation applies for percentage tip values.
- `pre-tax`: Tip amounts are calculated using the subtotal amount before taxes
- `post-tax`: Tip amounts are calculated using the subtotal amount + taxes

## Example Usage

```ruby
require "moov_ruby"

value = TipCalculationBasis::PRE_TAX
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PRE_TAX`  | pre-tax    |
| `POST_TAX` | post-tax   |