class Order < ApplicationRecord
    result = client.checkout.create_payment_link(
        body: {
          idempotency_key: "{123426789}",
          order: {
            location_id: "{LFREXCP0TQ4VT}",
            line_items: [
              {
                order: @order.order,
              }
            ]
          }
        }
      )
      
      if result.success?
        puts result.data
      elsif result.error?
        warn result.errors
      end
end
