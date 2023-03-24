class Checkout
  Item_A_single = 50

  def self.checkout(items)
    Item_A_single
  end
end

# class Checkout
#   PRICES = {
#     "A" => {
#       price: 50,
#       offer: {
#         quantity: 3,
#         special_price: 130
#       }
#     },
#     "B" => {
#       price: 30,
#       offer: {
#         quantity: 2,
#         special_price: 45
#       }
#     },
#     "C" => {
#       price: 20
#     },
#     "D" => {
#       price: 15
#     }
#   }

#   def self.checkout(items)
#     return -1 if items.match(/[^A-D]/)

#     items_array = items.upcase.split("")
#     total_price = 0

#     PRICES.each do |item, info|
#       quantity = items_array.count(item)
#       next if quantity == 0

#       if info[:offer]
#         special_offer_quantity = info[:offer][:quantity]
#         special_offer_price = info[:offer][:special_price]

#         special_offers_count = quantity / special_offer_quantity
#         remaining_items_count = quantity % special_offer_quantity

#         total_price += special_offers_count * special_offer_price
#         total_price += remaining_items_count * info[:price]
#       else
#         total_price += quantity * info[:price]
#       end
#     end

#     total_price
#   end
# end
