class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items, dependent: :destroy

  def subtotal
    subtotal = 0
    order_items.each do |item|
      subtotal += item.price
    end
    subtotal
  end

end
