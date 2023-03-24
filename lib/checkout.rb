class Checkout
  Item_A_single = 50
  Item_A_special = 130
  Number_items_A_sepcial = 3
  Item_B_single = 30
  Item_B_special = 45
  Number_items_B_sepcial = 2
  Item_C_single = 20
  Item_D_single = 15

  def self.checkout(items)
    return -1 if items.match(/.*[a-z].*/)
    number_items = Hash.new(0)
    total_bill = 0
    items.split("").each { |item| number_items[item] += 1 }
    number_items.each do |item, value|
      if item == "A"
        # binding.irb
        total_bill +=
          (
            ((value / Number_items_A_sepcial).floor * Item_A_special) +
              ((value % Number_items_A_sepcial) * Item_A_single)
          )
      elsif item == "B"
        total_bill +=
          (
            ((value / Number_items_B_sepcial).floor * Item_B_special) +
              ((value % Number_items_B_sepcial) * Item_B_single)
          )
      elsif item == "C"
        total_bill += (value * Item_C_single)
      elsif item == "D"
        total_bill += (value * Item_D_single)
      end
    end
    total_bill
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
