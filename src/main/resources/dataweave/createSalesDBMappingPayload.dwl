%dw 2.0
output application/java
var sales = vars.requestPayload default {}
---
{
    transaction_id: sales.transactionId,
    source: sales.source,
    customer_name: sales.customerName,
    delivery_address: sales.deliveryAddress,
    customer_contact: sales.customerContact,
    customer_age: sales.customerAge,
    customer_gender: sales.customerGender default null,
    total_amount: sales.totalAmount,
    payment_type: sales.paymentType,
    transaction_date: sales.transactionDate as DateTime
}