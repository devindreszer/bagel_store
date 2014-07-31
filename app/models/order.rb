class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :neighborhood
  has_many :order_items, dependent: :destroy

  def subtotal
    subtotal = 0
    self.order_items.each do |item|
      subtotal += item.price * item.quantity
    end
    subtotal
  end

  def add_item_price(item_price)
    self.price += item_price
    self.save
  end

  def delivery_charge
    self.neighborhood.delivery_charge
  end

end
