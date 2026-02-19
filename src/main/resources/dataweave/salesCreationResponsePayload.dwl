%dw 2.0
output application/json
---
{
  code: 201,
  message: "New sales transaction successfully inserted into the database.",
  correlationId: vars.correlationId,
  data: {
    transactionId: vars.transactionId
  }
}