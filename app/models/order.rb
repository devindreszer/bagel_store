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

  def add_item_price(item_price)
    self.price += item_price
    self.save
  end

end
