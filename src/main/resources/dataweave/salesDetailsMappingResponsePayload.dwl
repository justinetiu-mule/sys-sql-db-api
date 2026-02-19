%dw 2.0
output application/json
var sales = payload default []
---
{
  transactionId: sales.transaction_id[0],
  source: sales.source[0],
  customerName: sales.customer_name[0],
  deliveryAddress: sales.delivery_address[0],
  customerAge: sales.customer_age[0],
  customerGender: sales.customer_gender[0],
  customerContact: sales.customer_contact[0],
  items: sales map ((item, index) ->
      {
	      itemId: item.item_id,
	      name: item.product_name,
	      price: item.price,
	      quantity: item.quantity
      }
  ),
  totalAmount: sales.total_amount[0],
  paymentType: sales.payment_type[0],
  transactionDate: sales.transaction_date[0]
}