%dw 2.0
output application/java
var salesItems = vars.requestPayload.items default []
var transactionId = vars.transactionId default null
---
salesItems map {
    item_id: $.itemId,
    transaction_id: transactionId,
    product_name: $.name,
    price: $.price,
    quantity: $.quantity
}