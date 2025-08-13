# TransactionSource

Specifies the nature and initiator of a transaction. 

Crucial for recurring and merchant-initiated transactions as per card scheme rules. 
Omit for customer-initiated e-commerce transactions.


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `FIRST_RECURRING` | first-recurring   |
| `RECURRING`       | recurring         |
| `UNSCHEDULED`     | unscheduled       |