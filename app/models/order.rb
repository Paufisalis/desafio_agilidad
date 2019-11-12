class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def self.total(user)
    total = 0
    unpayed_orders = where(user: user, payed: nil)
    unpayed_orders.each do |order|
      total += order.product.price
    end
    return total
  end
end
