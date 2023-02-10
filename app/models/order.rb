class Order < ApplicationRecord
    result = client.checkout.create_payment_link(
        body: {
          idempotency_key: "{UNIQUE_KEY}",
          order: {
            location_id: "{LFREXCP0TQ4VT}",
            line_items: [
              {
                name: "60,000 mile maintenance",
                quantity: "1",
                note: "1st line item note",
                base_price_money: {
                  amount: 30000,
                  currency: "USD"
                }
              },
              {
                name: "Tire rotation and balancing",
                quantity: "1",
                base_price_money: {
                  amount: 15000,
                  currency: "USD"
                }
              },
              {
                name: "Wiper fluid replacement",
                quantity: "1",
                base_price_money: {
                  amount: 1900,
                  currency: "USD"
                }
              },
              {
                name: "Oil change",
                quantity: "1",
                base_price_money: {
                  amount: 2000,
                  currency: "USD"
                }
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
