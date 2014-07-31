class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :neighborhood
  has_many :order_items, dependent: :destroy

  def subtotal
    subtotal = 0
    order_items.each do |item|
      subtotal += item.price
    end
    subtotal
  end

  def delivery_charge
    self.neighborhood.delivery_charge
  end

end
