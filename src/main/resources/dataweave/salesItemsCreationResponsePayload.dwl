%dw 2.0
output application/json
---
{
  code: 201,
  message: "New sales items successfully inserted into the database.",
  correlationId: vars.correlationId,
  data: {
    transactionId: vars.transactionId,
    items: vars.requestPayload.items map {
    	itemId: $.itemId
    }
  }
}